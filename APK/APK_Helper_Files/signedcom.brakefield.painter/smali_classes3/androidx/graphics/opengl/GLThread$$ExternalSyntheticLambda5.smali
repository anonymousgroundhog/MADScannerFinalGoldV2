.class public final synthetic Landroidx/graphics/opengl/GLThread$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/graphics/opengl/GLThread;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Landroidx/graphics/opengl/GLThread;IIILjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/graphics/opengl/GLThread$$ExternalSyntheticLambda5;->f$0:Landroidx/graphics/opengl/GLThread;

    iput p2, p0, Landroidx/graphics/opengl/GLThread$$ExternalSyntheticLambda5;->f$1:I

    iput p3, p0, Landroidx/graphics/opengl/GLThread$$ExternalSyntheticLambda5;->f$2:I

    iput p4, p0, Landroidx/graphics/opengl/GLThread$$ExternalSyntheticLambda5;->f$3:I

    iput-object p5, p0, Landroidx/graphics/opengl/GLThread$$ExternalSyntheticLambda5;->f$4:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Landroidx/graphics/opengl/GLThread$$ExternalSyntheticLambda5;->f$0:Landroidx/graphics/opengl/GLThread;

    iget v1, p0, Landroidx/graphics/opengl/GLThread$$ExternalSyntheticLambda5;->f$1:I

    iget v2, p0, Landroidx/graphics/opengl/GLThread$$ExternalSyntheticLambda5;->f$2:I

    iget v3, p0, Landroidx/graphics/opengl/GLThread$$ExternalSyntheticLambda5;->f$3:I

    iget-object v4, p0, Landroidx/graphics/opengl/GLThread$$ExternalSyntheticLambda5;->f$4:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3, v4}, Landroidx/graphics/opengl/GLThread;->$r8$lambda$pn6MXlgFgj_dNK_yVVdifweRpLg(Landroidx/graphics/opengl/GLThread;IIILjava/lang/Runnable;)V

    return-void
.end method
