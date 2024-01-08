.class public final synthetic Lcom/brakefield/painter/ui/SwatchBar$PaletteColorViewHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/SwatchBar$PaletteColorViewHolder;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/SwatchBar$PaletteColorViewHolder;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/SwatchBar$PaletteColorViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/painter/ui/SwatchBar$PaletteColorViewHolder;

    iput p2, p0, Lcom/brakefield/painter/ui/SwatchBar$PaletteColorViewHolder$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/brakefield/painter/ui/SwatchBar$PaletteColorViewHolder$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final colorChanged(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/brakefield/painter/ui/SwatchBar$PaletteColorViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/painter/ui/SwatchBar$PaletteColorViewHolder;

    iget v1, p0, Lcom/brakefield/painter/ui/SwatchBar$PaletteColorViewHolder$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Lcom/brakefield/painter/ui/SwatchBar$PaletteColorViewHolder$$ExternalSyntheticLambda0;->f$2:I

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/brakefield/painter/ui/SwatchBar$PaletteColorViewHolder;->lambda$onClick$0$com-brakefield-painter-ui-SwatchBar$PaletteColorViewHolder(IIIZ)V

    return-void
.end method
