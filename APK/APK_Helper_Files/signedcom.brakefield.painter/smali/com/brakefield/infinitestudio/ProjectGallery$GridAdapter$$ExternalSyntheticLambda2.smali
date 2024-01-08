.class public final synthetic Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;

.field public final synthetic f$1:Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter$$ExternalSyntheticLambda2;->f$0:Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;

    iput-object p2, p0, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter$$ExternalSyntheticLambda2;->f$1:Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter$$ExternalSyntheticLambda2;->f$0:Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter$$ExternalSyntheticLambda2;->f$1:Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;

    invoke-virtual {v0, v1, p1}, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;->lambda$onBindViewHolder$2$com-brakefield-infinitestudio-ProjectGallery$GridAdapter(Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
