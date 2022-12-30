#include "ruby.h"

VALUE add(VALUE self, VALUE a, VALUE b)
{
    return INT2NUM(NUM2INT(a) + NUM2INT(b));
}

void Init_sample(void)
{
    VALUE mSample = rb_define_module("NativeSample");
    rb_define_module_function(mSample, "add", add, 2);
}