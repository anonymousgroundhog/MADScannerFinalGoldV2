.class public final synthetic Lcom/brakefield/infinitestudio/ImportOptions$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/infinitestudio/MenuOption;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/infinitestudio/MenuOption;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ImportOptions$$ExternalSyntheticLambda5;->f$0:Lcom/brakefield/infinitestudio/MenuOption;

    return-void
.end method


# virtual methods
.method public final onSelected()V
    .locals 1

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ImportOptions$$ExternalSyntheticLambda5;->f$0:Lcom/brakefield/infinitestudio/MenuOption;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/MenuOption;->onClicked()V

    return-void
.end method
