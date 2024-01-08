.class public Lcom/brakefield/painter/brushes/brushfolders/HarmonyFolder;
.super Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;
.source "HarmonyFolder.java"


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

    const/16 v0, 0xf

    return v0
.end method

.method public init()V
    .locals 4

    const v0, 0x7f120086

    .line 11
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/HarmonyFolder;->name:Ljava/lang/String;

    const v0, 0x7f080097

    .line 13
    iput v0, p0, Lcom/brakefield/painter/brushes/brushfolders/HarmonyFolder;->iconId:I

    .line 15
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/HarmonyFolder;->defaultBrushes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/HarmonyFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const-string/jumbo v2, "sketchy"

    const/4 v3, -0x1

    invoke-direct {v1, p0, v3, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/HarmonyFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const-string/jumbo v2, "shaded"

    invoke-direct {v1, p0, v3, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/HarmonyFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const-string v2, "long_fur"

    invoke-direct {v1, p0, v3, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/HarmonyFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const-string/jumbo v2, "short_fur"

    invoke-direct {v1, p0, v3, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/HarmonyFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const-string v2, "ribbons"

    invoke-direct {v1, p0, v3, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/HarmonyFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const/4 v2, 0x0

    sget-object v2, Lcom/google/api/client/extensions/android/http/tr/rffuYzZsQ;->rBJV:Ljava/lang/String;

    invoke-direct {v1, p0, v3, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/HarmonyFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const-string v2, "grid"

    invoke-direct {v1, p0, v3, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/HarmonyFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const-string v2, "circles"

    invoke-direct {v1, p0, v3, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/HarmonyFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const-string/jumbo v2, "squares"

    invoke-direct {v1, p0, v3, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_0
    invoke-super {p0}, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->init()V

    return-void
.end method
