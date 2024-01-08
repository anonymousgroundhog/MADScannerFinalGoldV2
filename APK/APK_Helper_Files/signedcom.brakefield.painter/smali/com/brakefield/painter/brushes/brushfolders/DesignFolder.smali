.class public Lcom/brakefield/painter/brushes/brushfolders/DesignFolder;
.super Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;
.source "DesignFolder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    const/16 v0, 0x17

    return v0
.end method

.method public init()V
    .locals 4

    const v0, 0x7f120084

    .line 11
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/DesignFolder;->name:Ljava/lang/String;

    const v0, 0x7f080094

    .line 13
    iput v0, p0, Lcom/brakefield/painter/brushes/brushfolders/DesignFolder;->iconId:I

    .line 15
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/DesignFolder;->defaultBrushes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/DesignFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const-string v2, "cut_out"

    const/4 v3, -0x1

    invoke-direct {v1, p0, v3, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/DesignFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const-string v2, "long_dashes"

    invoke-direct {v1, p0, v3, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/DesignFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const-string v2, "doodle_dots"

    invoke-direct {v1, p0, v3, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/DesignFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const-string v2, "flow_arrow"

    invoke-direct {v1, p0, v3, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/DesignFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const-string v2, "arrows"

    invoke-direct {v1, p0, v3, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/DesignFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const-string v2, "arrow_chain"

    invoke-direct {v1, p0, v3, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_0
    invoke-super {p0}, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->init()V

    return-void
.end method
