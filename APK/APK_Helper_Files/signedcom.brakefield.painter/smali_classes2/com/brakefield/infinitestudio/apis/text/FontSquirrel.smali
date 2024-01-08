.class public Lcom/brakefield/infinitestudio/apis/text/FontSquirrel;
.super Ljava/lang/Object;
.source "FontSquirrel.java"


# static fields
.field public static final ALL:Ljava/lang/String; = "all"

.field public static final BASE_URL:Ljava/lang/String; = "http://www.fontsquirrel.com/api/"

.field public static final CLASSIFICATIONS:Ljava/lang/String; = "classifications"

.field public static final FAMILY_INFO:Ljava/lang/String; = "familyinfo"

.field public static final FONT_LIST:Ljava/lang/String; = "fontlist/"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClassificationsURL()Ljava/lang/String;
    .locals 1

    const-string v0, "http://www.fontsquirrel.com/api/classifications"

    return-object v0
.end method

.method public static getFamilyInfoURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://www.fontsquirrel.com/api/familyinfo"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFontListAllURL()Ljava/lang/String;
    .locals 1

    const-string v0, "http://www.fontsquirrel.com/api/fontlist/all"

    return-object v0
.end method

.method public static getFontListForClassificationURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://www.fontsquirrel.com/api/fontlist/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
