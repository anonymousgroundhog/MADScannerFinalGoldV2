.class public final synthetic Lcom/brakefield/infinitestudio/ImportIntentLaunchers$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/infinitestudio/ImportIntentLaunchers;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/infinitestudio/ImportIntentLaunchers;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ImportIntentLaunchers$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/infinitestudio/ImportIntentLaunchers;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ImportIntentLaunchers$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/infinitestudio/ImportIntentLaunchers;

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ImportIntentLaunchers;->lambda$onCreate$1$com-brakefield-infinitestudio-ImportIntentLaunchers(Landroid/net/Uri;)V

    return-void
.end method
