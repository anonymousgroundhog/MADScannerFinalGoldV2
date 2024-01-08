.class public final synthetic Lcom/brakefield/infinitestudio/ImportOptions$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/infinitestudio/ImportIntentLaunchers;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/infinitestudio/ImportIntentLaunchers;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ImportOptions$$ExternalSyntheticLambda2;->f$0:Lcom/brakefield/infinitestudio/ImportIntentLaunchers;

    return-void
.end method


# virtual methods
.method public final onSelected()V
    .locals 1

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ImportOptions$$ExternalSyntheticLambda2;->f$0:Lcom/brakefield/infinitestudio/ImportIntentLaunchers;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ImportIntentLaunchers;->getFile()V

    return-void
.end method
