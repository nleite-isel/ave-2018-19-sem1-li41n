using System;
using System.Reflection;

namespace Reflection
{
	// Delegate type. This delegate can call any method that returns (int) 
	// and that has a single parameter of type (int)
	public delegate int Feedback(int value);

	public class MyEvent
	{
        public event Feedback FeedbackEvent; // Event. In the event specification, it's used a Delegate type (Feedback)

		public void AddHandler(Feedback f)    { FeedbackEvent += f; }
		public void RemoveHandler(Feedback f) { FeedbackEvent -= f; }

		public void NotifyHandlers(int n) {
			Console.WriteLine(FeedbackEvent(n)); 
			Console.WriteLine(); 
		}

		// Invoke handlers for each iteration [from, to]
		public void DoIt(int from, int to) {
			for (int i = from; i <= to; i++)
				NotifyHandlers(i); 
		}

	}


	public class TestEvent {

		private int handler1(int n) { 
			Console.WriteLine ("I'm handler 1 -> param n = {0}", n);
			return 1; 
		}
		public static int handler2(int n) { 
			Console.WriteLine ("I'm handler 2 -> param n = {0}", n);
			return 2; 
		}

		public static void ReflectOnEvent(Type typeContainingEvent) {
			EventInfo[] eis = typeContainingEvent.GetEvents(); // By default, it uses BindingFlags.Public, i.e. it searchs for public events	
			foreach (EventInfo ei in eis) {
				Console.WriteLine ("Name: {0}", ei.Name);
				Console.WriteLine ("EventHandlerType: {0}", ei.EventHandlerType);
				Console.WriteLine ("GetAddMethod: {0}", ei.GetAddMethod());
				Console.WriteLine ("GetRemoveMethod: {0}", ei.GetRemoveMethod());
			}
		}

		public static void Main1() {
			MyEvent e = new MyEvent();
			//
			// Register handlers in event. We could register on the event directly or use the AddHandler method
			//
			e.FeedbackEvent += TestEvent.handler2;
			e.AddHandler(new TestEvent ().handler1);

			e.DoIt(1, 3);
			////////////////////////////////////

			TestEvent.ReflectOnEvent(typeof(MyEvent));
		}
	}

}

