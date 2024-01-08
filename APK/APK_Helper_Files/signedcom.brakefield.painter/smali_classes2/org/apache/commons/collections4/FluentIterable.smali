.class public Lorg/apache/commons/collections4/FluentIterable;
.super Ljava/lang/Object;
.source "FluentIterable.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final iterable:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p0, p0, Lorg/apache/commons/collections4/FluentIterable;->iterable:Ljava/lang/Iterable;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TE;>;)V"
        }
    .end annotation

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p1, p0, Lorg/apache/commons/collections4/FluentIterable;->iterable:Ljava/lang/Iterable;

    return-void
.end method

.method public static empty()Lorg/apache/commons/collections4/FluentIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/collections4/FluentIterable<",
            "TT;>;"
        }
    .end annotation

    .line 81
    sget-object v0, Lorg/apache/commons/collections4/IterableUtils;->EMPTY_ITERABLE:Lorg/apache/commons/collections4/FluentIterable;

    return-object v0
.end method

.method public static of(Ljava/lang/Iterable;)Lorg/apache/commons/collections4/FluentIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Lorg/apache/commons/collections4/FluentIterable<",
            "TT;>;"
        }
    .end annotation

    .line 124
    invoke-static {p0}, Lorg/apache/commons/collections4/IterableUtils;->checkNotNull(Ljava/lang/Iterable;)V

    .line 125
    instance-of v0, p0, Lorg/apache/commons/collections4/FluentIterable;

    if-eqz v0, :cond_0

    .line 126
    check-cast p0, Lorg/apache/commons/collections4/FluentIterable;

    return-object p0

    .line 128
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/FluentIterable;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/FluentIterable;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;)Lorg/apache/commons/collections4/FluentIterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/apache/commons/collections4/FluentIterable<",
            "TT;>;"
        }
    .end annotation

    .line 94
    new-instance v0, Lorg/apache/commons/collections4/iterators/SingletonIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/iterators/SingletonIterator;-><init>(Ljava/lang/Object;Z)V

    invoke-static {v0}, Lorg/apache/commons/collections4/IteratorUtils;->asIterable(Ljava/util/Iterator;)Ljava/lang/Iterable;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/collections4/FluentIterable;->of(Ljava/lang/Iterable;)Lorg/apache/commons/collections4/FluentIterable;

    move-result-object p0

    return-object p0
.end method

.method public static varargs of([Ljava/lang/Object;)Lorg/apache/commons/collections4/FluentIterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lorg/apache/commons/collections4/FluentIterable<",
            "TT;>;"
        }
    .end annotation

    .line 107
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/collections4/FluentIterable;->of(Ljava/lang/Iterable;)Lorg/apache/commons/collections4/FluentIterable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public allMatch(Lorg/apache/commons/collections4/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 389
    iget-object v0, p0, Lorg/apache/commons/collections4/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lorg/apache/commons/collections4/IterableUtils;->matchesAll(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)Z

    move-result p1

    return p1
.end method

.method public anyMatch(Lorg/apache/commons/collections4/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 403
    iget-object v0, p0, Lorg/apache/commons/collections4/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lorg/apache/commons/collections4/IterableUtils;->matchesAny(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)Z

    move-result p1

    return p1
.end method

.method public append(Ljava/lang/Iterable;)Lorg/apache/commons/collections4/FluentIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lorg/apache/commons/collections4/FluentIterable<",
            "TE;>;"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lorg/apache/commons/collections4/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lorg/apache/commons/collections4/IterableUtils;->chainedIterable(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/collections4/FluentIterable;->of(Ljava/lang/Iterable;)Lorg/apache/commons/collections4/FluentIterable;

    move-result-object p1

    return-object p1
.end method

.method public varargs append([Ljava/lang/Object;)Lorg/apache/commons/collections4/FluentIterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lorg/apache/commons/collections4/FluentIterable<",
            "TE;>;"
        }
    .end annotation

    .line 161
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/FluentIterable;->append(Ljava/lang/Iterable;)Lorg/apache/commons/collections4/FluentIterable;

    move-result-object p1

    return-object p1
.end method

.method public asEnumeration()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "TE;>;"
        }
    .end annotation

    .line 374
    invoke-virtual {p0}, Lorg/apache/commons/collections4/FluentIterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/IteratorUtils;->asEnumeration(Ljava/util/Iterator;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public collate(Ljava/lang/Iterable;)Lorg/apache/commons/collections4/FluentIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lorg/apache/commons/collections4/FluentIterable<",
            "TE;>;"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lorg/apache/commons/collections4/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lorg/apache/commons/collections4/IterableUtils;->collatedIterable(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/collections4/FluentIterable;->of(Ljava/lang/Iterable;)Lorg/apache/commons/collections4/FluentIterable;

    move-result-object p1

    return-object p1
.end method

.method public collate(Ljava/lang/Iterable;Ljava/util/Comparator;)Lorg/apache/commons/collections4/FluentIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;",
            "Ljava/util/Comparator<",
            "-TE;>;)",
            "Lorg/apache/commons/collections4/FluentIterable<",
            "TE;>;"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lorg/apache/commons/collections4/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {p2, v0, p1}, Lorg/apache/commons/collections4/IterableUtils;->collatedIterable(Ljava/util/Comparator;Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/collections4/FluentIterable;->of(Ljava/lang/Iterable;)Lorg/apache/commons/collections4/FluentIterable;

    move-result-object p1

    return-object p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 422
    iget-object v0, p0, Lorg/apache/commons/collections4/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lorg/apache/commons/collections4/IterableUtils;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public copyInto(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TE;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 470
    iget-object v0, p0, Lorg/apache/commons/collections4/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {p1, v0}, Lorg/apache/commons/collections4/CollectionUtils;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    return-void

    .line 468
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Collection must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public eval()Lorg/apache/commons/collections4/FluentIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/FluentIterable<",
            "TE;>;"
        }
    .end annotation

    .line 239
    invoke-virtual {p0}, Lorg/apache/commons/collections4/FluentIterable;->toList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/FluentIterable;->of(Ljava/lang/Iterable;)Lorg/apache/commons/collections4/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/FluentIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;)",
            "Lorg/apache/commons/collections4/FluentIterable<",
            "TE;>;"
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lorg/apache/commons/collections4/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lorg/apache/commons/collections4/IterableUtils;->filteredIterable(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/collections4/FluentIterable;->of(Ljava/lang/Iterable;)Lorg/apache/commons/collections4/FluentIterable;

    move-result-object p1

    return-object p1
.end method

.method public forEach(Lorg/apache/commons/collections4/Closure;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;)V"
        }
    .end annotation

    .line 432
    iget-object v0, p0, Lorg/apache/commons/collections4/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lorg/apache/commons/collections4/IterableUtils;->forEach(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Closure;)V

    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 446
    iget-object v0, p0, Lorg/apache/commons/collections4/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lorg/apache/commons/collections4/IterableUtils;->get(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 412
    iget-object v0, p0, Lorg/apache/commons/collections4/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0}, Lorg/apache/commons/collections4/IterableUtils;->isEmpty(Ljava/lang/Iterable;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 364
    iget-object v0, p0, Lorg/apache/commons/collections4/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public limit(J)Lorg/apache/commons/collections4/FluentIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/apache/commons/collections4/FluentIterable<",
            "TE;>;"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lorg/apache/commons/collections4/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0, p1, p2}, Lorg/apache/commons/collections4/IterableUtils;->boundedIterable(Ljava/lang/Iterable;J)Ljava/lang/Iterable;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/collections4/FluentIterable;->of(Ljava/lang/Iterable;)Lorg/apache/commons/collections4/FluentIterable;

    move-result-object p1

    return-object p1
.end method

.method public loop()Lorg/apache/commons/collections4/FluentIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/FluentIterable<",
            "TE;>;"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lorg/apache/commons/collections4/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0}, Lorg/apache/commons/collections4/IterableUtils;->loopingIterable(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/FluentIterable;->of(Ljava/lang/Iterable;)Lorg/apache/commons/collections4/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public reverse()Lorg/apache/commons/collections4/FluentIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/FluentIterable<",
            "TE;>;"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lorg/apache/commons/collections4/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0}, Lorg/apache/commons/collections4/IterableUtils;->reversedIterable(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/FluentIterable;->of(Ljava/lang/Iterable;)Lorg/apache/commons/collections4/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 456
    iget-object v0, p0, Lorg/apache/commons/collections4/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0}, Lorg/apache/commons/collections4/IterableUtils;->size(Ljava/lang/Iterable;)I

    move-result v0

    return v0
.end method

.method public skip(J)Lorg/apache/commons/collections4/FluentIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/apache/commons/collections4/FluentIterable<",
            "TE;>;"
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lorg/apache/commons/collections4/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0, p1, p2}, Lorg/apache/commons/collections4/IterableUtils;->skippingIterable(Ljava/lang/Iterable;J)Ljava/lang/Iterable;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/collections4/FluentIterable;->of(Ljava/lang/Iterable;)Lorg/apache/commons/collections4/FluentIterable;

    move-result-object p1

    return-object p1
.end method

.method public toArray(Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TE;>;)[TE;"
        }
    .end annotation

    .line 482
    invoke-virtual {p0}, Lorg/apache/commons/collections4/FluentIterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/collections4/IteratorUtils;->toArray(Ljava/util/Iterator;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 494
    iget-object v0, p0, Lorg/apache/commons/collections4/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0}, Lorg/apache/commons/collections4/IterableUtils;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 500
    iget-object v0, p0, Lorg/apache/commons/collections4/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0}, Lorg/apache/commons/collections4/IterableUtils;->toString(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/FluentIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;+TO;>;)",
            "Lorg/apache/commons/collections4/FluentIterable<",
            "TO;>;"
        }
    .end annotation

    .line 309
    iget-object v0, p0, Lorg/apache/commons/collections4/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lorg/apache/commons/collections4/IterableUtils;->transformedIterable(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Transformer;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/collections4/FluentIterable;->of(Ljava/lang/Iterable;)Lorg/apache/commons/collections4/FluentIterable;

    move-result-object p1

    return-object p1
.end method

.method public unique()Lorg/apache/commons/collections4/FluentIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/FluentIterable<",
            "TE;>;"
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lorg/apache/commons/collections4/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0}, Lorg/apache/commons/collections4/IterableUtils;->uniqueIterable(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/FluentIterable;->of(Ljava/lang/Iterable;)Lorg/apache/commons/collections4/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public unmodifiable()Lorg/apache/commons/collections4/FluentIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/FluentIterable<",
            "TE;>;"
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lorg/apache/commons/collections4/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0}, Lorg/apache/commons/collections4/IterableUtils;->unmodifiableIterable(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/FluentIterable;->of(Ljava/lang/Iterable;)Lorg/apache/commons/collections4/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public zip(Ljava/lang/Iterable;)Lorg/apache/commons/collections4/FluentIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lorg/apache/commons/collections4/FluentIterable<",
            "TE;>;"
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lorg/apache/commons/collections4/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lorg/apache/commons/collections4/IterableUtils;->zippingIterable(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/collections4/FluentIterable;->of(Ljava/lang/Iterable;)Lorg/apache/commons/collections4/FluentIterable;

    move-result-object p1

    return-object p1
.end method

.method public varargs zip([Ljava/lang/Iterable;)Lorg/apache/commons/collections4/FluentIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lorg/apache/commons/collections4/FluentIterable<",
            "TE;>;"
        }
    .end annotation

    .line 355
    iget-object v0, p0, Lorg/apache/commons/collections4/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lorg/apache/commons/collections4/IterableUtils;->zippingIterable(Ljava/lang/Iterable;[Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/collections4/FluentIterable;->of(Ljava/lang/Iterable;)Lorg/apache/commons/collections4/FluentIterable;

    move-result-object p1

    return-object p1
.end method
