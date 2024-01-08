.class public final synthetic Lcom/brakefield/painter/ui/DockableElements$DockableElement$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/painter/ui/DockableElements$ToolListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/DockableElements$DockableElement;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/DockableElements$DockableElement$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    return-void
.end method


# virtual methods
.method public final isActive()Z
    .locals 1

    iget-object v0, p0, Lcom/brakefield/painter/ui/DockableElements$DockableElement$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/DockableElements$DockableElement;->isElementActive()Z

    move-result v0

    return v0
.end method
