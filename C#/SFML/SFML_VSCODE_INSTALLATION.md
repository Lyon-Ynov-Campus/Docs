# Installing C# SFML in Visual Studio Code

## Prerequisites

- [Visual Studio Code](https://code.visualstudio.com/)
- [.NET Core SDK](https://dotnet.microsoft.com/download)

## Step 1: Initialize a C# project

Open Visual Studio Code and create a new project by running the following command in the terminal:

```
dotnet new sln -n "YourProjectName"
```

You should now receive a message saying that the project was created successfully and have a .sln file in your project folder.

## Step 2: Create a console application

Create a new console application by running the following command in the terminal:

```
dotnet new console -n "YourProjectName"
```

You should now receive a message saying that the project was created successfully and have a new architecture in your project folder.
This architecture should look like this:

```
YourProjectName
├── YourProjectName
│   ├── OBJ
│   ├── YourProjectName.csproj
│   ├── Program.cs
├── YourProjectName.sln
```

Now, add the console application to the solution by running the following command in the terminal :

```
dotnet sln YourProjectName.sln add YourProjectName/YourProjectName.csproj
```

## Step 3: Add SFML to the project

Let's add SFML to the project ! 
First, you have to move to the console application folder by running the following command in the terminal:

```
cd YourProjectName
```

Then, you have to add SFML to the project by running the following command in the terminal:

```
dotnet add package SFML.Net --version 2.5.0
```

You should now have a "YourProjectName.csproj" file looking like this:

```
<Project Sdk="Microsoft.NET.Sdk">

  <PropertyGroup>
    <OutputType>Exe</OutputType>
    <TargetFramework>net6.0</TargetFramework>
  </PropertyGroup>

  <ItemGroup>
    <PackageReference Include="SFML.Net" Version="2.5.0" />
  </ItemGroup>

</Project>
```

## Step 4: Run the project

Now, you can run the project by running the following command in the terminal:

```
dotnet run
```

That's it !