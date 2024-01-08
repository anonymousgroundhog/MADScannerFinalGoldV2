.class public Lcom/brakefield/painter/brushes/brushfolders/PaintbrushesFolder;
.super Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;
.source "PaintbrushesFolder.java"


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

    const/16 v0, 0x1c

    return v0
.end method

.method public init()V
    .locals 4

    const v0, 0x7f12008a

    .line 11
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/PaintbrushesFolder;->name:Ljava/lang/String;

    const v0, 0x7f08009b

    .line 13
    iput v0, p0, Lcom/brakefield/painter/brushes/brushfolders/PaintbrushesFolder;->iconId:I

    .line 15
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/PaintbrushesFolder;->defaultBrushes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/PaintbrushesFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const-string v2, "paint_stroke"

    const/4 v3, -0x1

    invoke-direct {v1, p0, v3, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/PaintbrushesFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const-string/jumbo v2, "thick_angular"

    invoke-direct {v1, p0, v3, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/PaintbrushesFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const-string v2, "clay_roller"

    invoke-direct {v1, p0, v3, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/PaintbrushesFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const-string v2, "dry_brush"

    invoke-direct {v1, p0, v3, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/PaintbrushesFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const-string v2, "dry_ink"

    invoke-direct {v1, p0, v3, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/PaintbrushesFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const-string v2, "filbert"

    invoke-direct {v1, p0, v3, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/PaintbrushesFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const-string v2, "fine_blender"

    invoke-direct {v1, p0, v3, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/PaintbrushesFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const-string v2, "flat_oil"

    invoke-direct {v1, p0, v3, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/PaintbrushesFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const-string v2, "glazed_acrylic"

    invoke-direct {v1, p0, v3, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/PaintbrushesFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const-string v2, "gouache"

    invoke-direct {v1, p0, v3, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/PaintbrushesFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const-string v2, "indian_ink"

    invoke-direct {v1, p0, v3, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/PaintbrushesFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const-string v2, "loaded_knife"

    invoke-direct {v1, p0, v3, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/PaintbrushesFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const-string v2, "old_glazed"

    invoke-direct {v1, p0, v3, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/PaintbrushesFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const-string v2, "old_gouache"

    invoke-direct {v1, p0, v3, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/PaintbrushesFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const-string v2, "old_oil"

    invoke-direct {v1, p0, v3, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/PaintbrushesFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const-string v2, "old_varnish"

    invoke-direct {v1, p0, v3, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/PaintbrushesFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const-string v2, "paint_roller"

    invoke-direct {v1, p0, v3, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/PaintbrushesFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const-string v2, "palette_knife"

    invoke-direct {v1, p0, v3, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/PaintbrushesFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const-string/jumbo v2, "streaky_oil"

    invoke-direct {v1, p0, v3, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/PaintbrushesFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const-string/jumbo v2, "stucco_roller"

    invoke-direct {v1, p0, v3, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/PaintbrushesFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const-string/jumbo v2, "thick_filbert"

    invoke-direct {v1, p0, v3, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/PaintbrushesFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const-string/jumbo v2, "thick_oil"

    invoke-direct {v1, p0, v3, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/PaintbrushesFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const-string/jumbo v2, "thick_rake"

    invoke-direct {v1, p0, v3, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/PaintbrushesFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const-string/jumbo v2, "thin_hairs"

    invoke-direct {v1, p0, v3, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/PaintbrushesFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const-string/jumbo v2, "velocity_splatter"

    invoke-direct {v1, p0, v3, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/PaintbrushesFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const-string/jumbo v2, "wet_gouache"

    invoke-direct {v1, p0, v3, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/PaintbrushesFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const-string/jumbo v2, "wet_stucco_roller"

    invoke-direct {v1, p0, v3, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_0
    invoke-super {p0}, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->init()V

    return-void
.end method
