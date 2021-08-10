---
title: Psychological types - C. G. Jung
author: nelvis
date: '2021-08-10'
slug: psychological-types-c-g-jung
categories:
  - Lesenotizen
tags:
  - books
  - psychology
description: ''
dropCap: no
displayInMenu: no
displayInList: yes
---

I will only note down the way I understood cognitive theory as explained by Jung over the book - mathematical notation is only used for bookkeeping purposes. I cannot really write the way I would like because github markdown does not support LaTeX.

The question is: can we describe how the brain elaborates a stimulus, and what it produces in response? To try and answer the question, we first need to define what a stimulus is and what properties it has. I will just call the stimulus input.

To begin with, we can say that an input is any sensorial stimulation, for example music coming in from an open window or the face of an actor in a movie or the taste of pizza. Implicit in the definition there is a dependency on the observer, whose senses receive the input. So we define an input as a pair _x = (e, I)_ of an event _x_ - say sound waves - and an observer _I_ sensing it.

An input has following characteristics:
* It can be *rational* or *irrational*, according to whether is is consciously or unconsciounly sensed. In a crowded subway stop we receive many sensorial stimulation, but are really conscious only of a handful of them at any given time;
* It carries *objective* and *subjective* information. Here the idea is that every measurement necessarily carries information both on the event being measured and on the instrument used to measure it. Drinking water from a glass will tell us something both about the water and the glass, looking at the moon through a telescope we are also looking at the telescope's lenses.

We define two projections _pi<sub>obj</sub>_ and _pi<sub>sub</sub>_ that carry an input _x_ to its objective component _x<sub>obj</sub> = pi<sub>obj</sub>(x)_ or analogous subjective component.

According to Jung inputs can be analyzed by four different functions:
* Sensation *s* and intuition *n* accept irrational inputs;
* Feeling *f* and thinking *t* accept rational inputs.

All 4 functions accept both subjective and objective inputs.

I find the irrational functions easier to describe. These functions do not require consciousness, I would say they can be found in some animals as well:
* *s* is just the unfiltered reaction to the input, say for humans the pleasure from the warmth of the sun on the shoulders or for a bear the pleasure of scratching his back on a tree;
* *n* is the instinctual gaining of knowledge from the input, say for a human the sudden idea popping out of nowhere or for a cat learning how to open a door.

The rational functions are more complex:
* *f* qssigns a mood (a feeling) to the input, based on conscious evaluation. So it is **not** gut feeling;
* *t* builds abstract concepts from the input, consciously synthetizing knowledge.

From what I read I understood *f* to be the conscious development of *s* and *t* to be the conscious development of *n*, while this is not denied by Jung it is also not affirmed where there would have been a chance to.

These function can accept both objective and subjective input:
* For *s* computing *s(x<sub>obj</sub>)* delivers just the sensation, say with the same intensity. Computing *s(x<sub>sub</sub>)* delivers the unfiltered unconscious reaction: I would take Proust's madeleine as en example of a modest objective sensation but strong subjetive sensation;
* For *n* the application to the objective component delivers an intuition about concepts stemming from the facts being analysed, the application to the subjective components delivers an intuition about how the observer relates to the fact, disregarding the facts per se and focusing on the observer's reaction;
* For *f* considering *f(x<sub>obj</sub>)* yields a mood related to the what has been perceived, while *f(x<sub>sub</sub>)* provides a mood on the effect of the perception on the observer;
* For *t* the application to the objective component leads to empirical theories (e.g. Darwin), the application to the subjective component leads to abstract theories (e.g. Kant).

Again, it seems to me that *t* builds on/extends *n*, while *f* builds on/extends *s*.

Now for the interactions between the functions. These are the rules:
* One of the rational functions is conscious, the other is unconscious;
* One of the rational functions elaborates the objective component, the other the subjective component;
* Both rules above hold for the irrational functions as well;
* The conscious rational function and the conscious irrational function are applied to the same component.

For a function to be unconscious it means to be primitive and infantile. For example, primitive *t* only produces sterile and tautological thinking, primitive *s* leads to barbaric hedonism. Conscious functions are finer in their product and fully developed; the more they are developed, the more the corresponding unconscious function is undervelopeded.

Denoting *a<sub>ra</sub>* the degree of development of the conoscious rational function and *a<sub>ir</sub>* the degree of development of the conscious irrational function, in both cases a positive real number, we get for the corresponding unconscious functions degrees *b<sub>ra</sub> = -a<sub>ra</sub>* and *b<sub>ir</sub> = -a<sub>ir</sub>*. For *f* and *s* conscious functions working on the objective component, the final cognitive output can be written as *c(x) = a<sub>ra</sub>(f(x<sub>obj</sub>)-t(x<sub>sub</sub>))+a<sub>ir</sub>(s(x<sub>obj</sub>)-n(x<sub>obj</sub>))*, with the output of a function applied on an input of the wrong rationality just defined as 0.

The cognitive function is called extraverted in case the component analysed by the conscious function is the objective one, intraverted otherwise.