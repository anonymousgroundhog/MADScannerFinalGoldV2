.class public final synthetic Lcom/brakefield/infinitestudio/ProjectGallery$Project$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic f$0:Landroid/content/DialogInterface$OnClickListener;

.field public final synthetic f$1:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Landroid/content/DialogInterface$OnClickListener;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project$$ExternalSyntheticLambda7;->f$0:Landroid/content/DialogInterface$OnClickListener;

    iput-object p2, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project$$ExternalSyntheticLambda7;->f$1:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project$$ExternalSyntheticLambda7;->f$0:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project$$ExternalSyntheticLambda7;->f$1:Landroidx/appcompat/app/AlertDialog;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->lambda$bindViewHolder$2(Landroid/content/DialogInterface$OnClickListener;Landroidx/appcompat/app/AlertDialog;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
