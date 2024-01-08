.class Lcom/brakefield/painter/ui/SimpleUI$AppSystems;
.super Ljava/lang/Object;
.source "SimpleUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/SimpleUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppSystems"
.end annotation


# instance fields
.field public final guideManager:Lcom/brakefield/painter/nativeobjs/GuideManagerNative;

.field public final perspectiveManager:Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;

.field public final referenceManager:Lcom/brakefield/painter/nativeobjs/ReferenceManagerNative;

.field public final symmetryManager:Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;

.field public final toolManager:Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1558
    new-instance v0, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getToolManager()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;-><init>(J)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI$AppSystems;->toolManager:Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;

    .line 1559
    new-instance v0, Lcom/brakefield/painter/nativeobjs/GuideManagerNative;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getGuideManager()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/painter/nativeobjs/GuideManagerNative;-><init>(J)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI$AppSystems;->guideManager:Lcom/brakefield/painter/nativeobjs/GuideManagerNative;

    .line 1560
    new-instance v0, Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getPerspectiveManager()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;-><init>(J)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI$AppSystems;->perspectiveManager:Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;

    .line 1561
    new-instance v0, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getSymmetryManager()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;-><init>(J)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI$AppSystems;->symmetryManager:Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;

    .line 1562
    new-instance v0, Lcom/brakefield/painter/nativeobjs/ReferenceManagerNative;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getReferenceManager()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/painter/nativeobjs/ReferenceManagerNative;-><init>(J)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI$AppSystems;->referenceManager:Lcom/brakefield/painter/nativeobjs/ReferenceManagerNative;

    return-void
.end method
