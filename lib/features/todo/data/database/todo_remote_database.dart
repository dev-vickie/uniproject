import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uniproject/features/todo/domain/entities/todo.dart';

abstract class TodoRemoteDatabase {
  Future<Todo> addTodo(Todo todo);
  Future<Todo> editTodo(Todo todo);
  Future<Todo> deleteTodo(Todo todo);
  Future<List<Todo>> getAllTodos();
}

class TodoRemoteDatabaseImpl implements TodoRemoteDatabase {
  @override
  Future<Todo> addTodo(Todo todo) async {
    await FirebaseFirestore.instance
        .collection('todos')
        .doc(todo.id)
        .set(todo.toMap());
    return todo;
  }

  @override
  Future<Todo> deleteTodo(Todo todo) async {
    await FirebaseFirestore.instance.collection('todos').doc(todo.id).delete();
    return todo;
  }

  @override
  Future<Todo> editTodo(Todo todo) async {
    await FirebaseFirestore.instance
        .collection('todos')
        .doc(todo.id)
        .update(todo.toMap());
    return todo;
  }

  @override
  Future<List<Todo>> getAllTodos() async {
    final snapshot = await FirebaseFirestore.instance.collection('todos').get();
    return snapshot.docs.map((e) => Todo.fromMap(e.data())).toList();
  }
}
