.class public Lcom/brakefield/painter/brushes/brushfolders/SprayersFolder;
.super Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;
.source "SprayersFolder.java"


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

    const/16 v0, 0x20

    return v0
.end method

.method public init()V
    .locals 4

    const v0, 0x7f120090

    .line 11
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/SprayersFolder;->name:Ljava/lang/String;

    const v0, 0x7f0800a0

    .line 13
    iput v0, p0, Lcom/brakefield/painter/brushes/brushfolders/SprayersFolder;->iconId:I

    .line 15
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/SprayersFolder;->defaultBrushes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/SprayersFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const-string v2, "blood_splatter"

    const/4 v3, -0x1

    invoke-direct {v1, p0, v3, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/SprayersFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const-string v2, "flecks"

    invoke-direct {v1, p0, v3, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/SprayersFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const-string v2, "circle_drip"

    invoke-direct {v1, p0, v3, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/SprayersFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const-string/jumbo v2, "sand_blaster"

    invoke-direct {v1, p0, v3, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/SprayersFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const-string/jumbo v2, "water_splatter"

    invoke-direct {v1, p0, v3, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/SprayersFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const-string/jumbo v2, "spray_paint"

    invoke-direct {v1, p0, v3, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/SprayersFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const-string/jumbo v2, "soft_airbrush"

    invoke-direct {v1, p0, v3, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/SprayersFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const-string v2, "medium_airbrush"

    invoke-direct {v1, p0, v3, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/SprayersFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const-string v2, "hard_airbrush"

    invoke-direct {v1, p0, v3, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/SprayersFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const-string v2, "hard_round"

    invoke-direct {v1, p0, v3, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/SprayersFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const-string/jumbo v2, "splatter"

    invoke-direct {v1, p0, v3, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/SprayersFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const-string v2, "cloudy"

    invoke-direct {v1, p0, v3, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_0
    invoke-super {p0}, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->init()V

    return-void
.end method
