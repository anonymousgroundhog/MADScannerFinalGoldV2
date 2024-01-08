.class public final synthetic Lorg/ejml/sparse/csc/CommonOps_MT_DSCC$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lpabeles/concurrency/ConcurrencyOps$NewInstance;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lorg/ejml/sparse/csc/mult/Workspace_MT_DSCC;

    invoke-direct {v0}, Lorg/ejml/sparse/csc/mult/Workspace_MT_DSCC;-><init>()V

    return-object v0
.end method
