.class public final synthetic Lcom/brakefield/painter/ImportImageOptions$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;


# instance fields
.field public final synthetic f$0:Landroid/net/Uri;

.field public final synthetic f$1:Lcom/brakefield/painter/ui/SimpleUI;

.field public final synthetic f$2:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/net/Uri;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ImportImageOptions$$ExternalSyntheticLambda1;->f$0:Landroid/net/Uri;

    iput-object p2, p0, Lcom/brakefield/painter/ImportImageOptions$$ExternalSyntheticLambda1;->f$1:Lcom/brakefield/painter/ui/SimpleUI;

    iput-object p3, p0, Lcom/brakefield/painter/ImportImageOptions$$ExternalSyntheticLambda1;->f$2:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onSelected()V
    .locals 3

    iget-object v0, p0, Lcom/brakefield/painter/ImportImageOptions$$ExternalSyntheticLambda1;->f$0:Landroid/net/Uri;

    iget-object v1, p0, Lcom/brakefield/painter/ImportImageOptions$$ExternalSyntheticLambda1;->f$1:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v2, p0, Lcom/brakefield/painter/ImportImageOptions$$ExternalSyntheticLambda1;->f$2:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcom/brakefield/painter/ImportImageOptions;->lambda$getAddImageAsReferenceOption$1(Landroid/net/Uri;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    return-void
.end method
