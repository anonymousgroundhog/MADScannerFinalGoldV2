.class public Lorg/ejml/concurrency/EjmlConcurrency;
.super Lpabeles/concurrency/ConcurrencyOps;
.source "EjmlConcurrency.java"


# static fields
.field public static USE_CONCURRENT:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lpabeles/concurrency/ConcurrencyOps;-><init>()V

    return-void
.end method

.method public static isUseConcurrent()Z
    .locals 1

    .line 46
    sget-boolean v0, Lorg/ejml/concurrency/EjmlConcurrency;->USE_CONCURRENT:Z

    return v0
.end method

.method public static setMaxThreads(I)V
    .locals 1

    .line 41
    invoke-static {p0}, Lpabeles/concurrency/ConcurrencyOps;->setMaxThreads(I)V

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 42
    :goto_0
    sput-boolean v0, Lorg/ejml/concurrency/EjmlConcurrency;->USE_CONCURRENT:Z

    return-void
.end method
