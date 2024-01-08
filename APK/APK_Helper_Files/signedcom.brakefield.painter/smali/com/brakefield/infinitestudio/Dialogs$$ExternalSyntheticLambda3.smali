.class public final synthetic Lcom/brakefield/infinitestudio/Dialogs$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/components/OnChange;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/infinitestudio/ui/components/OnChange;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/Dialogs$$ExternalSyntheticLambda3;->f$0:Lcom/brakefield/infinitestudio/ui/components/OnChange;

    return-void
.end method


# virtual methods
.method public final change(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/brakefield/infinitestudio/Dialogs$$ExternalSyntheticLambda3;->f$0:Lcom/brakefield/infinitestudio/ui/components/OnChange;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/brakefield/infinitestudio/Dialogs;->lambda$showHexadecimalInputNumberDialog$6(Lcom/brakefield/infinitestudio/ui/components/OnChange;Ljava/lang/String;)V

    return-void
.end method
