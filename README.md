# Design Patterns in Ruby

Notes and exercises from Russ Olsen's _Design Patterns in Ruby_ book.

## Up and Running

### Dependencies

- Ruby (see `.ruby-version`)
- Bundler

### Bundler

```
bundle install
```

## Organization

This repository is organized into directories that correspond to the chapters in the book, but named to reflect the pattern. Most directories include a `driver.rb` file that will execute the code that demonstrates the design pattern.

```
ruby driver.rb
```

## Sorbet

Playing around with [Sorbet](https://sorbet.org) for type-checking.

## Patterns for Patterns

1. Separate out the things that change from those that stay the same.

A key goal of software engineering is to build systems that allow us to contain the damage. How do you achieve that ideal system, the one where all changes are local? You get there by separating the things that are likely to change from the things that are likely to stay the same. If you can identify which aspects of your system design are likely to change, you can isolate those bits from the more stable parts.

1. Program to an interface, not an implementation.

The idea here is to program to the most general type you can—not to call a car a car if you can get away with calling it a vehicle, regardless of whether `Car` and `Vehicle` are real classes or abstract interfaces. And if you can get away with calling your car something more general still, such as a movable object, so much the better. By writing code that uses the most general type possible—for example, by treating all of our planes and trains and cars like vehicles whenever we can, we reduce the total amount of coupling in our code.

1. Prefer composition over inheritance.

The trouble with inheritance is that inheritance comes with some unhappy strings attached. When you create a subclass of an existing class, you are not really creating two separate entities: Instead, you are making two classes that are bound together by a common implementation core. Inheritance, by its very nature, tends to marry the subclass to the superclass. Change the behavior of the superclass, and there is an excellent chance that you have also changed the behavior of the subclass. Further, subclasses have a unique view into the guts of the superclass. Any of the interior workings of the superclass that are not carefully hidden away are clearly visible to the subclasses.

If inheritance has so many problems, what is the alternative? We can assemble the behaviors we need through composition. Assembling functionality with composition offers a host of advantages: The code is factored out into its own class, ready for reuse. We have also increased encapsulation. Separating out the composable code from the subject ensures that a firm wall of interface exists between the two.

1. Delegate, delegate, delegate.

The combination of composition and delegation is a powerful and flexible alter- native to inheritance. We get most of the benefits of inheritance, much more flexibility, and none of the unpleasant side effects. Of course, nothing comes for free. Delegation requires an extra method call, as the delegating object passes the buck along. This extra method call will have some performance cost—but in most cases, it will be very minor.

1. You ain’t gonna need it.

The YAGNI principle says simply that you should not implement features, or design in flexibility, that you don’t need right now. Why? Because chances are, you ain’t gonna need it later, either.
