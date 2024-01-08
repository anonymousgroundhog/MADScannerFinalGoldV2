.class Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator$12;
.super Ljava/lang/Object;
.source "PathCreator.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->show(Landroid/app/Activity;Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator$OnPathCreatedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator$OnPathCreatedListener;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator$OnPathCreatedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 344
    iput-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator$12;->val$listener:Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator$OnPathCreatedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 346
    iget-object p2, p0, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator$12;->val$listener:Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator$OnPathCreatedListener;

    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator;->access$1200()Landroid/graphics/Path;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/brakefield/infinitestudio/sketchbook/shapes/PathCreator$OnPathCreatedListener;->pathCreated(Landroid/graphics/Path;)V

    .line 347
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
