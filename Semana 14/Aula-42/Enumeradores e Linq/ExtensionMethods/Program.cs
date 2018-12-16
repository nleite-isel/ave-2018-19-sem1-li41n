using System.IO;
using System;
using System.Collections.Generic;

using MyExtensions; // To use my extension methods

public class Global {

	
	public static IEnumerable<FileInfo> GetDirectoryEnumerator(DirectoryInfo di)
	{
		// Console.WriteLine("################\nDirectoryFullPath: {0}\nCreationDate: {1}\n#################", di.FullName, di.CreationTime);
		FileInfo []files = di.GetFiles();
		// SortFileSystemInfo(files);
		foreach (FileInfo fi in files)
		{
			yield return fi;
		}

		DirectoryInfo[] directories = di.GetDirectories();
		// SortFileSystemInfo(directories);
		foreach (DirectoryInfo childDi in directories)
		{
			foreach (FileInfo fi in GetDirectoryEnumerator(childDi)) yield return fi;
		}
	}



	static void Main1(string[] args)
	{
		DirectoryInfo di = new DirectoryInfo("..\\..\\");

		IEnumerable<FileInfo> fis = Global.GetDirectoryEnumerator(di)
           .Where(fi => fi.Extension == ".cs")
           .OrderBy(fi => fi.LastWriteTime);

       foreach(FileInfo fi in fis){
           Console.WriteLine(fi.FullName);
       }

		
		
	}
}