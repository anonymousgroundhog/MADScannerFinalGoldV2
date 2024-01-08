.class public Lcom/brakefield/infinitestudio/ui/KeyCommand;
.super Ljava/lang/Object;
.source "KeyCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/ui/KeyCommand$Action;
    }
.end annotation


# static fields
.field public static final JSON_ACTION:Ljava/lang/String; = "action"

.field public static final JSON_ALT:Ljava/lang/String; = "alt"

.field public static final JSON_CTRL:Ljava/lang/String; = "ctrl"

.field public static final JSON_INPUT:Ljava/lang/String; = "input"

.field public static final JSON_SHIFT:Ljava/lang/String; = "shift"


# instance fields
.field private ALT:Z

.field private CTRL:Z

.field private SHIFT:Z

.field private action:Lcom/brakefield/infinitestudio/ui/KeyCommand$Action;

.field public actionId:I

.field public description:Ljava/lang/String;

.field private input:I


# direct methods
.method public constructor <init>(IZZZLcom/brakefield/infinitestudio/ui/KeyCommand$Action;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/KeyCommand;->input:I

    .line 31
    iput-boolean p2, p0, Lcom/brakefield/infinitestudio/ui/KeyCommand;->CTRL:Z

    .line 32
    iput-boolean p3, p0, Lcom/brakefield/infinitestudio/ui/KeyCommand;->ALT:Z

    .line 33
    iput-boolean p4, p0, Lcom/brakefield/infinitestudio/ui/KeyCommand;->SHIFT:Z

    .line 34
    iput-object p5, p0, Lcom/brakefield/infinitestudio/ui/KeyCommand;->action:Lcom/brakefield/infinitestudio/ui/KeyCommand$Action;

    .line 35
    iput-object p6, p0, Lcom/brakefield/infinitestudio/ui/KeyCommand;->description:Ljava/lang/String;

    return-void
.end method

.method private getStringFromKeyCode(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3e

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    const-string p1, "Not found"

    return-object p1

    :pswitch_0
    const-string p1, "F12"

    return-object p1

    :pswitch_1
    const-string p1, "F11"

    return-object p1

    :pswitch_2
    const-string p1, "F10"

    return-object p1

    :pswitch_3
    const-string p1, "F9"

    return-object p1

    :pswitch_4
    const/4 p1, 0x0

    sget-object p1, Landroidx/navigation/ui/zZ/NxTXUJn;->eVFXOUJVcfZsvcy:Ljava/lang/String;

    return-object p1

    :pswitch_5
    const-string p1, "F7"

    return-object p1

    :pswitch_6
    const-string p1, "F6"

    return-object p1

    :pswitch_7
    const-string p1, "F5"

    return-object p1

    :pswitch_8
    const-string p1, "F4"

    return-object p1

    :pswitch_9
    const-string p1, "F3"

    return-object p1

    :pswitch_a
    const-string p1, "F2"

    return-object p1

    :pswitch_b
    const-string p1, "F1"

    return-object p1

    :pswitch_c
    const-string p1, "/"

    return-object p1

    :pswitch_d
    const-string p1, "\'"

    return-object p1

    :pswitch_e
    const-string p1, ";"

    return-object p1

    :pswitch_f
    const-string p1, "\\"

    return-object p1

    :pswitch_10
    const-string p1, "]"

    return-object p1

    :pswitch_11
    const-string p1, "["

    return-object p1

    :pswitch_12
    const-string p1, "="

    return-object p1

    :pswitch_13
    const-string p1, "-"

    return-object p1

    :pswitch_14
    const-string p1, "`"

    return-object p1

    :pswitch_15
    const-string p1, "delete"

    return-object p1

    :pswitch_16
    const-string/jumbo p1, "return"

    return-object p1

    :pswitch_17
    const-string p1, "."

    return-object p1

    :pswitch_18
    const-string p1, ","

    return-object p1

    :pswitch_19
    const-string p1, "Z"

    return-object p1

    :pswitch_1a
    const-string p1, "Y"

    return-object p1

    :pswitch_1b
    const-string p1, "X"

    return-object p1

    :pswitch_1c
    const-string p1, "W"

    return-object p1

    :pswitch_1d
    const-string p1, "V"

    return-object p1

    :pswitch_1e
    const-string p1, "U"

    return-object p1

    :pswitch_1f
    const-string p1, "T"

    return-object p1

    :pswitch_20
    const-string p1, "S"

    return-object p1

    :pswitch_21
    const-string p1, "R"

    return-object p1

    :pswitch_22
    const-string p1, "Q"

    return-object p1

    :pswitch_23
    const-string p1, "P"

    return-object p1

    :pswitch_24
    const-string p1, "O"

    return-object p1

    :pswitch_25
    const-string p1, "N"

    return-object p1

    :pswitch_26
    const-string p1, "M"

    return-object p1

    :pswitch_27
    const-string p1, "L"

    return-object p1

    :pswitch_28
    const-string p1, "K"

    return-object p1

    :pswitch_29
    const-string p1, "J"

    return-object p1

    :pswitch_2a
    const-string p1, "I"

    return-object p1

    :pswitch_2b
    const-string p1, "H"

    return-object p1

    :pswitch_2c
    const-string p1, "G"

    return-object p1

    :pswitch_2d
    const-string p1, "F"

    return-object p1

    :pswitch_2e
    const-string p1, "E"

    return-object p1

    :pswitch_2f
    const-string p1, "D"

    return-object p1

    :pswitch_30
    const-string p1, "C"

    return-object p1

    :pswitch_31
    const-string p1, "B"

    return-object p1

    :pswitch_32
    const-string p1, "A"

    return-object p1

    :pswitch_33
    const-string p1, "center"

    return-object p1

    :pswitch_34
    const-string/jumbo p1, "right"

    return-object p1

    :pswitch_35
    const-string p1, "left"

    return-object p1

    :pswitch_36
    const-string p1, "down"

    return-object p1

    :pswitch_37
    const-string/jumbo p1, "up"

    return-object p1

    .line 79
    :pswitch_38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 p1, p1, -0x7

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string/jumbo p1, "space"

    return-object p1

    :cond_1
    const-string/jumbo p1, "tab"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1d
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x42
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x83
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getJSON()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 157
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 158
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/KeyCommand;->action:Lcom/brakefield/infinitestudio/ui/KeyCommand$Action;

    invoke-interface {v1}, Lcom/brakefield/infinitestudio/ui/KeyCommand$Action;->id()I

    move-result v1

    const-string v2, "action"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 159
    iget v1, p0, Lcom/brakefield/infinitestudio/ui/KeyCommand;->input:I

    invoke-direct {p0, v1}, Lcom/brakefield/infinitestudio/ui/KeyCommand;->getStringFromKeyCode(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "input"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ctrl"

    .line 160
    iget-boolean v2, p0, Lcom/brakefield/infinitestudio/ui/KeyCommand;->CTRL:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "alt"

    .line 161
    iget-boolean v2, p0, Lcom/brakefield/infinitestudio/ui/KeyCommand;->ALT:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v1, "shift"

    .line 162
    iget-boolean v2, p0, Lcom/brakefield/infinitestudio/ui/KeyCommand;->SHIFT:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-object v0
.end method

.method public getKeyCommandString()Ljava/lang/String;
    .locals 2

    .line 54
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/KeyCommand;->SHIFT:Z

    if-eqz v0, :cond_0

    const-string v0, "SHIFT + "

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 57
    :goto_0
    iget-boolean v1, p0, Lcom/brakefield/infinitestudio/ui/KeyCommand;->CTRL:Z

    if-eqz v1, :cond_1

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "CTRL + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    :cond_1
    iget-boolean v1, p0, Lcom/brakefield/infinitestudio/ui/KeyCommand;->ALT:Z

    if-eqz v1, :cond_2

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ALT + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/brakefield/infinitestudio/ui/KeyCommand;->input:I

    invoke-direct {p0, v1}, Lcom/brakefield/infinitestudio/ui/KeyCommand;->getStringFromKeyCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handled(IZZZ)Z
    .locals 1

    .line 44
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/KeyCommand;->input:I

    if-ne v0, p1, :cond_0

    iget-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/KeyCommand;->CTRL:Z

    if-ne p1, p2, :cond_0

    iget-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/KeyCommand;->ALT:Z

    if-ne p1, p3, :cond_0

    iget-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/KeyCommand;->SHIFT:Z

    if-ne p1, p4, :cond_0

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/KeyCommand;->shouldFire()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 45
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/KeyCommand;->action:Lcom/brakefield/infinitestudio/ui/KeyCommand$Action;

    invoke-interface {p1}, Lcom/brakefield/infinitestudio/ui/KeyCommand$Action;->fire()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public loadJSON(Lorg/json/JSONObject;Landroid/view/KeyCharacterMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "action"

    .line 169
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/KeyCommand;->actionId:I

    const-string v0, "input"

    .line 171
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object p2

    const/4 v0, 0x0

    .line 173
    aget-object p2, p2, v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    iput p2, p0, Lcom/brakefield/infinitestudio/ui/KeyCommand;->input:I

    const-string p2, "ctrl"

    .line 175
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/brakefield/infinitestudio/ui/KeyCommand;->CTRL:Z

    const-string p2, "alt"

    .line 176
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/brakefield/infinitestudio/ui/KeyCommand;->ALT:Z

    const-string/jumbo p2, "shift"

    .line 177
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/KeyCommand;->SHIFT:Z

    return-void
.end method

.method public shouldFire()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
