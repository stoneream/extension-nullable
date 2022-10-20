extension Nullable<A> on A? {
  B? map<B>(B Function(A) f) {
    if (this != null) {
      return f(this!);
    } else {
      return null;
    }
  }

  B fold<B>(B zero, B Function(A) f) {
    if (this != null) {
      return f(this!);
    } else {
      return zero;
    }
  }
}
