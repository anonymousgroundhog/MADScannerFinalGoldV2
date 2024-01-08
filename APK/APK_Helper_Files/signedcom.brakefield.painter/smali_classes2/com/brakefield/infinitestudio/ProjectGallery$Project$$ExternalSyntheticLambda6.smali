.class public final synthetic Lcom/brakefield/infinitestudio/ProjectGallery$Project$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/infinitestudio/ProjectGallery$Project;

.field public final synthetic f$1:Landroid/widget/EditText;

.field public final synthetic f$2:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/infinitestudio/ProjectGallery$Project;Landroid/widget/EditText;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project$$ExternalSyntheticLambda6;->f$0:Lcom/brakefield/infinitestudio/ProjectGallery$Project;

    iput-object p2, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project$$ExternalSyntheticLambda6;->f$1:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project$$ExternalSyntheticLambda6;->f$2:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project$$ExternalSyntheticLambda6;->f$0:Lcom/brakefield/infinitestudio/ProjectGallery$Project;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project$$ExternalSyntheticLambda6;->f$1:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project$$ExternalSyntheticLambda6;->f$2:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->lambda$bindViewHolder$1$com-brakefield-infinitestudio-ProjectGallery$Project(Landroid/widget/EditText;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Landroid/content/DialogInterface;I)V

    return-void
.end method
