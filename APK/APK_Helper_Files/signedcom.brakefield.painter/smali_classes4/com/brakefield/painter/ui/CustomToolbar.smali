.class public Lcom/brakefield/painter/ui/CustomToolbar;
.super Ljava/lang/Object;
.source "CustomToolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/ui/CustomToolbar$PanelDragListener;
    }
.end annotation


# instance fields
.field protected final JSON_ELEMENTS:Ljava/lang/String;

.field private activity:Landroid/app/Activity;

.field private dragging:Z

.field private panel:Landroid/view/View;

.field private toolbar:Landroid/widget/LinearLayout;

.field private ui:Lcom/brakefield/painter/ui/SimpleUI;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/brakefield/painter/ui/CustomToolbar;->dragging:Z

    const-string v0, "elements"

    .line 165
    iput-object v0, p0, Lcom/brakefield/painter/ui/CustomToolbar;->JSON_ELEMENTS:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/brakefield/painter/ui/CustomToolbar;)Landroid/app/Activity;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/brakefield/painter/ui/CustomToolbar;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/brakefield/painter/ui/CustomToolbar;)Lcom/brakefield/painter/ui/SimpleUI;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/brakefield/painter/ui/CustomToolbar;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    return-object p0
.end method

.method static synthetic access$300(Lcom/brakefield/painter/ui/CustomToolbar;)Landroid/widget/LinearLayout;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/brakefield/painter/ui/CustomToolbar;->toolbar:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic lambda$setup$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method protected getQuickBarJSON()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 205
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 206
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    .line 207
    :goto_0
    iget-object v3, p0, Lcom/brakefield/painter/ui/CustomToolbar;->toolbar:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/brakefield/painter/ui/CustomToolbar;->toolbar:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "elements"

    .line 208
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public getView(Ljava/lang/Object;)Landroid/widget/ImageView;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/brakefield/painter/ui/CustomToolbar;->toolbar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    return-object p1
.end method

.method public hide()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/brakefield/painter/ui/CustomToolbar;->panel:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected load(Landroid/app/Activity;)V
    .locals 6

    .line 179
    iget-object v0, p0, Lcom/brakefield/painter/ui/CustomToolbar;->toolbar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 181
    :try_start_0
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getProjectsPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "interface.json"

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/FileManager;->getFileInputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 184
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 188
    :cond_0
    new-instance v3, Lorg/json/JSONTokener;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    const-string v3, "elements"

    .line 189
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    .line 191
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 192
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v4

    .line 193
    iget-object v5, p0, Lcom/brakefield/painter/ui/CustomToolbar;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v4, p1, v5}, Lcom/brakefield/painter/ui/DockableElements$DockableElement;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;

    move-result-object v4

    .line 194
    iget-object v5, p0, Lcom/brakefield/painter/ui/CustomToolbar;->toolbar:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 197
    :cond_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v0, :cond_3

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 181
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz v0, :cond_2

    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p1

    .line 198
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 201
    :cond_3
    :goto_4
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/CustomToolbar;->show()V

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/brakefield/painter/ui/CustomToolbar;->toolbar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method protected save()V
    .locals 3

    .line 168
    :try_start_0
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getProjectsPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "interface.json"

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/FileManager;->getFileOutputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :try_start_1
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 170
    :try_start_2
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/CustomToolbar;->getQuickBarJSON()Lorg/json/JSONObject;

    move-result-object v2

    .line 171
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 172
    :try_start_3
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v2

    .line 168
    :try_start_5
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v1

    if-eqz v0, :cond_0

    :try_start_7
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    throw v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v0

    .line 173
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_2
    return-void
.end method

.method public setup(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 1

    .line 40
    iput-object p1, p0, Lcom/brakefield/painter/ui/CustomToolbar;->activity:Landroid/app/Activity;

    .line 41
    iput-object p2, p0, Lcom/brakefield/painter/ui/CustomToolbar;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    .line 42
    iput-object p3, p0, Lcom/brakefield/painter/ui/CustomToolbar;->panel:Landroid/view/View;

    const p2, 0x7f0a0481

    .line 44
    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/brakefield/painter/ui/CustomToolbar;->toolbar:Landroid/widget/LinearLayout;

    .line 46
    new-instance p2, Lcom/brakefield/infinitestudio/ui/BarDrawable;

    invoke-direct {p2, p3}, Lcom/brakefield/infinitestudio/ui/BarDrawable;-><init>(Landroid/view/View;)V

    invoke-virtual {p3, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 47
    new-instance p2, Lcom/brakefield/painter/ui/CustomToolbar$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/brakefield/painter/ui/CustomToolbar$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p3, p2}, Landroid/view/View;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    .line 48
    new-instance p2, Lcom/brakefield/painter/ui/CustomToolbar$PanelDragListener;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/brakefield/painter/ui/CustomToolbar$PanelDragListener;-><init>(Lcom/brakefield/painter/ui/CustomToolbar;Lcom/brakefield/painter/ui/CustomToolbar$1;)V

    invoke-virtual {p3, p2}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 50
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/CustomToolbar;->load(Landroid/app/Activity;)V

    return-void
.end method

.method public show()V
    .locals 2

    .line 59
    invoke-static {}, Lcom/brakefield/painter/PurchaseManager;->hasMaster()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/brakefield/painter/ui/CustomToolbar;->dragging:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/brakefield/painter/ui/CustomToolbar;->toolbar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/CustomToolbar;->panel:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 59
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/CustomToolbar;->hide()V

    :goto_1
    return-void
.end method

.method public showForDragAndDrop()V
    .locals 1

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/brakefield/painter/ui/CustomToolbar;->dragging:Z

    .line 55
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/CustomToolbar;->show()V

    return-void
.end method

.method public update()V
    .locals 3

    const/16 v0, 0xcf

    .line 76
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/brakefield/painter/ui/CustomToolbar;->getView(Ljava/lang/Object;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    const v1, 0x7f0a044a

    .line 78
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    .line 79
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isRecordingPlayback()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    sget v1, Lcom/brakefield/infinitestudio/color/Colors;->RED:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 82
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    .line 84
    :cond_0
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    const/high16 v1, 0x3f000000    # 0.5f

    .line 85
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 89
    :cond_1
    :goto_0
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->selectedLayerId()I

    move-result v0

    const/16 v1, 0xfc

    .line 91
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/brakefield/painter/ui/CustomToolbar;->getView(Ljava/lang/Object;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 93
    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->getLayerVisibility(I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getHighlightColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_1

    .line 94
    :cond_2
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_3
    :goto_1
    const/16 v1, 0xfd

    .line 97
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/brakefield/painter/ui/CustomToolbar;->getView(Ljava/lang/Object;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 99
    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->getLayerClippingMask(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getHighlightColor()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_2

    .line 100
    :cond_4
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_5
    :goto_2
    return-void
.end method
