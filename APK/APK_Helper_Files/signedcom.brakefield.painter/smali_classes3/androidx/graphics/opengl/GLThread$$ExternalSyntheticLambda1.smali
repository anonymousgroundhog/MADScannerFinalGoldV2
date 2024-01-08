.class public final synthetic Landroidx/graphics/opengl/GLThread$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/graphics/opengl/GLThread;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/view/Surface;

.field public final synthetic f$3:Landroidx/graphics/opengl/GLRenderer$RenderCallback;

.field public final synthetic f$4:I

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Landroidx/graphics/opengl/GLThread;ILandroid/view/Surface;Landroidx/graphics/opengl/GLRenderer$RenderCallback;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/graphics/opengl/GLThread$$ExternalSyntheticLambda1;->f$0:Landroidx/graphics/opengl/GLThread;

    iput p2, p0, Landroidx/graphics/opengl/GLThread$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Landroidx/graphics/opengl/GLThread$$ExternalSyntheticLambda1;->f$2:Landroid/view/Surface;

    iput-object p4, p0, Landroidx/graphics/opengl/GLThread$$ExternalSyntheticLambda1;->f$3:Landroidx/graphics/opengl/GLRenderer$RenderCallback;

    iput p5, p0, Landroidx/graphics/opengl/GLThread$$ExternalSyntheticLambda1;->f$4:I

    iput p6, p0, Landroidx/graphics/opengl/GLThread$$ExternalSyntheticLambda1;->f$5:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Landroidx/graphics/opengl/GLThread$$ExternalSyntheticLambda1;->f$0:Landroidx/graphics/opengl/GLThread;

    iget v1, p0, Landroidx/graphics/opengl/GLThread$$ExternalSyntheticLambda1;->f$1:I

    iget-object v2, p0, Landroidx/graphics/opengl/GLThread$$ExternalSyntheticLambda1;->f$2:Landroid/view/Surface;

    iget-object v3, p0, Landroidx/graphics/opengl/GLThread$$ExternalSyntheticLambda1;->f$3:Landroidx/graphics/opengl/GLRenderer$RenderCallback;

    iget v4, p0, Landroidx/graphics/opengl/GLThread$$ExternalSyntheticLambda1;->f$4:I

    iget v5, p0, Landroidx/graphics/opengl/GLThread$$ExternalSyntheticLambda1;->f$5:I

    invoke-static/range {v0 .. v5}, Landroidx/graphics/opengl/GLThread;->$r8$lambda$T8dSkUEORjHKAxCNL_q1jFuTYmI(Landroidx/graphics/opengl/GLThread;ILandroid/view/Surface;Landroidx/graphics/opengl/GLRenderer$RenderCallback;II)V

    return-void
.end method
