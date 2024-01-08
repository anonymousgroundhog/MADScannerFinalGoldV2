.class public final synthetic Lorg/ejml/UtilEjml$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToDoubleFunction;


# instance fields
.field public final synthetic f$0:[D


# direct methods
.method public synthetic constructor <init>([D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ejml/UtilEjml$$ExternalSyntheticLambda0;->f$0:[D

    return-void
.end method


# virtual methods
.method public final applyAsDouble(Ljava/lang/Object;)D
    .locals 2

    iget-object v0, p0, Lorg/ejml/UtilEjml$$ExternalSyntheticLambda0;->f$0:[D

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lorg/ejml/UtilEjml;->lambda$sortByIndex$0([DLjava/lang/Integer;)D

    move-result-wide v0

    return-wide v0
.end method
