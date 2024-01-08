.class public final synthetic Landroidx/graphics/opengl/GLRenderer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$2:Landroidx/graphics/opengl/GLRenderer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function1;Landroidx/graphics/opengl/GLRenderer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/graphics/opengl/GLRenderer$$ExternalSyntheticLambda0;->f$0:Ljava/util/ArrayList;

    iput-object p2, p0, Landroidx/graphics/opengl/GLRenderer$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Landroidx/graphics/opengl/GLRenderer$$ExternalSyntheticLambda0;->f$2:Landroidx/graphics/opengl/GLRenderer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/graphics/opengl/GLRenderer$$ExternalSyntheticLambda0;->f$0:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/graphics/opengl/GLRenderer$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Landroidx/graphics/opengl/GLRenderer$$ExternalSyntheticLambda0;->f$2:Landroidx/graphics/opengl/GLRenderer;

    invoke-static {v0, v1, v2}, Landroidx/graphics/opengl/GLRenderer;->$r8$lambda$3lJ013Svz-W-dLF2oJtCJzMavLY(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function1;Landroidx/graphics/opengl/GLRenderer;)V

    return-void
.end method
