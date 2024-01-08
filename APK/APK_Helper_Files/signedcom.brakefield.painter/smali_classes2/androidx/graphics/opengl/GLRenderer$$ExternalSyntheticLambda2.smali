.class public final synthetic Landroidx/graphics/opengl/GLRenderer$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$1:Landroidx/graphics/opengl/GLRenderer$RenderTarget;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Landroidx/graphics/opengl/GLRenderer$RenderTarget;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/graphics/opengl/GLRenderer$$ExternalSyntheticLambda2;->f$0:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Landroidx/graphics/opengl/GLRenderer$$ExternalSyntheticLambda2;->f$1:Landroidx/graphics/opengl/GLRenderer$RenderTarget;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/graphics/opengl/GLRenderer$$ExternalSyntheticLambda2;->f$0:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Landroidx/graphics/opengl/GLRenderer$$ExternalSyntheticLambda2;->f$1:Landroidx/graphics/opengl/GLRenderer$RenderTarget;

    invoke-static {v0, v1}, Landroidx/graphics/opengl/GLRenderer;->$r8$lambda$Zi6q2Krbc2sgWR-aQRCHFpsGiYg(Lkotlin/jvm/functions/Function1;Landroidx/graphics/opengl/GLRenderer$RenderTarget;)V

    return-void
.end method
