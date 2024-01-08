.class public final synthetic Lcom/brakefield/painter/brushes/BrushPackManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;Ljava/lang/String;ILjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/brushes/BrushPackManager$$ExternalSyntheticLambda3;->f$0:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    iput-object p2, p0, Lcom/brakefield/painter/brushes/BrushPackManager$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/brakefield/painter/brushes/BrushPackManager$$ExternalSyntheticLambda3;->f$2:I

    iput-object p4, p0, Lcom/brakefield/painter/brushes/BrushPackManager$$ExternalSyntheticLambda3;->f$3:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/brakefield/painter/brushes/BrushPackManager$$ExternalSyntheticLambda3;->f$0:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    iget-object v1, p0, Lcom/brakefield/painter/brushes/BrushPackManager$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/brakefield/painter/brushes/BrushPackManager$$ExternalSyntheticLambda3;->f$2:I

    iget-object v3, p0, Lcom/brakefield/painter/brushes/BrushPackManager$$ExternalSyntheticLambda3;->f$3:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3}, Lcom/brakefield/painter/brushes/BrushPackManager;->lambda$duplicateBrush$2(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;Ljava/lang/String;ILjava/lang/Runnable;)V

    return-void
.end method
