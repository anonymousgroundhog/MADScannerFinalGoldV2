.class public Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPx;
.super Ljava/lang/Object;
.source "FiveHundredPx.java"


# static fields
.field private static final BASE_URL:Ljava/lang/String; = "https://api.500px.com/v1/photos"

.field public static final CATEGORY_ABSTRACT:Ljava/lang/String; = "Abstract"

.field public static final CATEGORY_ANIMALS:Ljava/lang/String; = "Animals"

.field public static final CATEGORY_BLACK_AND_WHITE:Ljava/lang/String; = "Black and White"

.field public static final CATEGORY_CELEBRITIES:Ljava/lang/String; = "Celebrities"

.field public static final CATEGORY_CITY_AND_ARCHITECTURE:Ljava/lang/String; = "City and Architecture"

.field public static final CATEGORY_COMMERCIAL:Ljava/lang/String; = "Commercial"

.field public static final CATEGORY_CONCERT:Ljava/lang/String; = "Concert"

.field public static final CATEGORY_FAMILY:Ljava/lang/String; = "Family"

.field public static final CATEGORY_FASHION:Ljava/lang/String; = "Fashion"

.field public static final CATEGORY_FILM:Ljava/lang/String; = "Film"

.field public static final CATEGORY_FINE_ART:Ljava/lang/String; = "Fine Art"

.field public static final CATEGORY_FOOD:Ljava/lang/String; = "Food"

.field public static final CATEGORY_JOURNALISM:Ljava/lang/String; = "Journalism"

.field public static final CATEGORY_LANDSCAPES:Ljava/lang/String; = "Landscapes"

.field public static final CATEGORY_MACRO:Ljava/lang/String; = "Macro"

.field public static final CATEGORY_NATURE:Ljava/lang/String; = "Nature"

.field public static final CATEGORY_NUDE:Ljava/lang/String; = "Nude"

.field public static final CATEGORY_PEOPLE:Ljava/lang/String; = "People"

.field public static final CATEGORY_PERFORMING_ARTS:Ljava/lang/String; = "Performing Arts"

.field public static final CATEGORY_SPORT:Ljava/lang/String; = "Sport"

.field public static final CATEGORY_STILL_LIFE:Ljava/lang/String; = "Still Life"

.field public static final CATEGORY_STREET:Ljava/lang/String; = "Street"

.field public static final CATEGORY_TRANSPORTATION:Ljava/lang/String; = "Transportation"

.field public static final CATEGORY_TRAVEL:Ljava/lang/String; = "Travel"

.field public static final CATEGORY_UNDERWATER:Ljava/lang/String; = "Underwater"

.field public static final CATEGORY_URBAN:Ljava/lang/String; = "Urban Exploration"

.field private static final CATEGORY_URL:Ljava/lang/String;

.field public static final CATEGORY_WEDDING:Ljava/lang/String; = "Wedding"

.field private static final CONSUMER_KEY:Ljava/lang/String; = "YHDN9ho1O6YIiQWRyYDBVYmXP44dSzEp8jgLVsQE"

.field private static final FEATURE_URL:Ljava/lang/String;

.field private static final GET_USER:Ljava/lang/String; = "https://api.500px.com/v1/users/show?consumer_key=YHDN9ho1O6YIiQWRyYDBVYmXP44dSzEp8jgLVsQE&username="

.field private static IMAGE_LIST_URL:Ljava/lang/String; = null

.field private static final PER_PAGE:I = 0x14

.field private static final SEARCH_URL:Ljava/lang/String; = "https://api.500px.com/v1/photos/search/?rpp=100&consumer_key=YHDN9ho1O6YIiQWRyYDBVYmXP44dSzEp8jgLVsQE&term="

.field public static final SORT_COMMENTS:Ljava/lang/String; = "&sort=comments_count"

.field public static final SORT_CREATED:Ljava/lang/String; = "&sort=created_at"

.field public static final SORT_FAVORITES:Ljava/lang/String; = "&sort=favorites_count"

.field public static final SORT_RATING:Ljava/lang/String; = "&sort=rating"

.field public static final SORT_TAKEN:Ljava/lang/String; = "&sort=taken_at"

.field public static final SORT_VIEWS:Ljava/lang/String; = "&sort=times_viewed"

.field public static final SORT_VOTES:Ljava/lang/String; = "&sort=votes_count"

.field private static final USER_FAVORITES_URL:Ljava/lang/String;

.field private static final USER_FRIENDS_URL:Ljava/lang/String;

.field private static final USER_URL:Ljava/lang/String;

.field public static sortType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://api.500px.com/v1/photos?rpp=20"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPx;->getSort()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&consumer_key=YHDN9ho1O6YIiQWRyYDBVYmXP44dSzEp8jgLVsQE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPx;->IMAGE_LIST_URL:Ljava/lang/String;

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPx;->IMAGE_LIST_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&feature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPx;->FEATURE_URL:Ljava/lang/String;

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPx;->IMAGE_LIST_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&only="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPx;->CATEGORY_URL:Ljava/lang/String;

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPx;->IMAGE_LIST_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&feature=user&username="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPx;->USER_URL:Ljava/lang/String;

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPx;->IMAGE_LIST_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&feature=user_friends&username="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPx;->USER_FRIENDS_URL:Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPx;->IMAGE_LIST_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&feature=user_favorites&username="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPx;->USER_FAVORITES_URL:Ljava/lang/String;

    const/4 v0, 0x0

    .line 56
    sput v0, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPx;->sortType:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendPage(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "&page="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static censor(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "&exclude=Nude"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCategory(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPx;->CATEGORY_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getEditors()Ljava/lang/String;
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPx;->FEATURE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "editors"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExtendedPhoto(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://api.500px.com/v1/photos/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "?image_size="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    if-eqz p1, :cond_0

    const-string p1, "3"

    goto :goto_0

    :cond_0
    const-string p1, "2"

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "&consumer_key=YHDN9ho1O6YIiQWRyYDBVYmXP44dSzEp8jgLVsQE"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPopular()Ljava/lang/String;
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPx;->FEATURE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "popular"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSearch(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://api.500px.com/v1/photos/search/?rpp=100&consumer_key=YHDN9ho1O6YIiQWRyYDBVYmXP44dSzEp8jgLVsQE&term="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v1, " "

    const-string v2, "+"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSort()Ljava/lang/String;
    .locals 1

    .line 120
    sget v0, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPx;->sortType:I

    packed-switch v0, :pswitch_data_0

    const-string v0, ""

    return-object v0

    :pswitch_0
    const-string v0, "&sort=comments_count"

    return-object v0

    :pswitch_1
    const-string v0, "&sort=taken_at"

    return-object v0

    :pswitch_2
    const-string v0, "&sort=times_viewed"

    return-object v0

    :pswitch_3
    const-string v0, "&sort=favorites_count"

    return-object v0

    :pswitch_4
    const-string v0, "&sort=votes_count"

    return-object v0

    :pswitch_5
    const-string v0, "&sort=created_at"

    return-object v0

    :pswitch_6
    const-string v0, "&sort=rating"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getToday()Ljava/lang/String;
    .locals 2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPx;->FEATURE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v1, Lcom/google/android/gms/common/data/ieA/NoHYdmAciUCT;->FYNqLUYvBkxw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUpcoming()Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPx;->FEATURE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "upcoming"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUser(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPx;->USER_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUserFavorites(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPx;->USER_FAVORITES_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUserFriends(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPx;->USER_FRIENDS_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUserProfile(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://api.500px.com/v1/users/show?consumer_key=YHDN9ho1O6YIiQWRyYDBVYmXP44dSzEp8jgLVsQE&username="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getWeek()Ljava/lang/String;
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPx;->FEATURE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fresh_week"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getYesterday()Ljava/lang/String;
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPx;->FEATURE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fresh_yesterday"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
