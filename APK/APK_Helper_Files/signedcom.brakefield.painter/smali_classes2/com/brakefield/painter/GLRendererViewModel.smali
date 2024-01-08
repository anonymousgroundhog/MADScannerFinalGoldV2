.class public Lcom/brakefield/painter/GLRendererViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "GLRendererViewModel.java"


# instance fields
.field public glRenderer:Landroidx/graphics/opengl/GLRenderer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 8
    new-instance v0, Landroidx/graphics/opengl/GLRenderer;

    invoke-direct {v0}, Landroidx/graphics/opengl/GLRenderer;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/GLRendererViewModel;->glRenderer:Landroidx/graphics/opengl/GLRenderer;

    return-void
.end method
