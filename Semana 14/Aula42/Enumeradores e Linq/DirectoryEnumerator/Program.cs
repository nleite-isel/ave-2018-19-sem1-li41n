/*****************************************************************************************
 * Centro de Cálculo do Instituto Superior de Engenharia de Lisboa - CCISEL              *
 *****************************************************************************************/
 

using System;
using System.Collections.Generic;
using System.Text;
using System.Linq;
using System.IO;

class Exercicio3
{
	private static void SortFileSystemInfo(FileSystemInfo[] files)
	{
		Array.Sort(files, delegate(FileSystemInfo f1, FileSystemInfo f2)
		{
			return f1.CreationTime.CompareTo(f2.CreationTime);
		}
		);
	}

	public static IEnumerable<FileInfo> GetDirectoryEnumerator(DirectoryInfo di)
	{
		Console.WriteLine("################\nDirectoryFullPath: {0}\nCreationDate: {1}\n#################", di.FullName, di.CreationTime);
		FileInfo []files = di.GetFiles();
		SortFileSystemInfo(files);
		foreach (FileInfo fi in files)
		{
			yield return fi;
		}

		DirectoryInfo[] directories = di.GetDirectories();
		SortFileSystemInfo(directories);
		foreach (DirectoryInfo childDi in directories)
		{
			foreach (FileInfo fi in GetDirectoryEnumerator(childDi)) yield return fi;
		}
	}


	static void Main1(string[] args)
	{
		foreach (FileInfo file in GetDirectoryEnumerator(new DirectoryInfo("..\\..\\")))
		{
			Console.WriteLine("FileName: {0}; CreationDate:  {1}", file.Name, file.CreationTime);
		}
	}
}

