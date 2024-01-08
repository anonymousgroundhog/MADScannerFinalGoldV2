.class public final synthetic Lcom/brakefield/painter/ui/DockableElements$OptionsImportElement$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/ImportIntentLaunchers$ResultCallback;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;

.field public final synthetic f$1:Lcom/brakefield/painter/ui/SimpleUI;

.field public final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/DockableElements$OptionsImportElement$$ExternalSyntheticLambda0;->f$0:Landroid/app/Activity;

    iput-object p2, p0, Lcom/brakefield/painter/ui/DockableElements$OptionsImportElement$$ExternalSyntheticLambda0;->f$1:Lcom/brakefield/painter/ui/SimpleUI;

    iput-object p3, p0, Lcom/brakefield/painter/ui/DockableElements$OptionsImportElement$$ExternalSyntheticLambda0;->f$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final processUri(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3

    iget-object v0, p0, Lcom/brakefield/painter/ui/DockableElements$OptionsImportElement$$ExternalSyntheticLambda0;->f$0:Landroid/app/Activity;

    iget-object v1, p0, Lcom/brakefield/painter/ui/DockableElements$OptionsImportElement$$ExternalSyntheticLambda0;->f$1:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v2, p0, Lcom/brakefield/painter/ui/DockableElements$OptionsImportElement$$ExternalSyntheticLambda0;->f$2:Landroid/view/View;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/brakefield/painter/ui/DockableElements$OptionsImportElement;->lambda$handleClick$2(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method
