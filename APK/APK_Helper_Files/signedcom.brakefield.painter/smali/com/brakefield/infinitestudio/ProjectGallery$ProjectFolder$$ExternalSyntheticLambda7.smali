.class public final synthetic Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder$$ExternalSyntheticLambda7;->f$0:Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder$$ExternalSyntheticLambda7;->f$0:Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->lambda$bindViewHolder$6$com-brakefield-infinitestudio-ProjectGallery$ProjectFolder(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
