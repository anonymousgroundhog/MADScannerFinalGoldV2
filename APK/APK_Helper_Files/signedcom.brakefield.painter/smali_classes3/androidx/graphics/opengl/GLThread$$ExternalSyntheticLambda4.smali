.class public final synthetic Landroidx/graphics/opengl/GLThread$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/graphics/opengl/GLThread;

.field public final synthetic f$1:Landroidx/graphics/opengl/GLRenderer$EGLContextCallback;


# direct methods
.method public synthetic constructor <init>(Landroidx/graphics/opengl/GLThread;Landroidx/graphics/opengl/GLRenderer$EGLContextCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/graphics/opengl/GLThread$$ExternalSyntheticLambda4;->f$0:Landroidx/graphics/opengl/GLThread;

    iput-object p2, p0, Landroidx/graphics/opengl/GLThread$$ExternalSyntheticLambda4;->f$1:Landroidx/graphics/opengl/GLRenderer$EGLContextCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/graphics/opengl/GLThread$$ExternalSyntheticLambda4;->f$0:Landroidx/graphics/opengl/GLThread;

    iget-object v1, p0, Landroidx/graphics/opengl/GLThread$$ExternalSyntheticLambda4;->f$1:Landroidx/graphics/opengl/GLRenderer$EGLContextCallback;

    invoke-static {v0, v1}, Landroidx/graphics/opengl/GLThread;->$r8$lambda$aeVmAB6ZCnBkIFV1VGcE2PhoK_g(Landroidx/graphics/opengl/GLThread;Landroidx/graphics/opengl/GLRenderer$EGLContextCallback;)V

    return-void
.end method
