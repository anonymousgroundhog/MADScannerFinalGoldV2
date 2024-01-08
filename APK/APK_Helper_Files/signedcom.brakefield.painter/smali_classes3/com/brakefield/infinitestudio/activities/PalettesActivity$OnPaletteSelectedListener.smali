.class public interface abstract Lcom/brakefield/infinitestudio/activities/PalettesActivity$OnPaletteSelectedListener;
.super Ljava/lang/Object;
.source "PalettesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/activities/PalettesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPaletteSelectedListener"
.end annotation


# virtual methods
.method public abstract getDefaultPalettes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onPaletteFileImported(Ljava/lang/String;)V
.end method

.method public abstract onPaletteImageImported(Ljava/lang/String;)V
.end method

.method public abstract onPaletteSelected(Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;)V
.end method
