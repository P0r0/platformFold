.class public Lmobisocial/osm/Rdl;
.super Ljava/lang/Object;
.source "Rdl.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmobisocial/osm/Rdl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final VERSION:I

.field public appName:Ljava/lang/String;

.field public callback:Landroid/net/Uri;

.field public displayCaption:Ljava/lang/String;

.field public displayText:Ljava/lang/String;

.field public displayThumbnailUri:Landroid/net/Uri;

.field public displayTitle:Ljava/lang/String;

.field public json:Lorg/json/JSONObject;

.field public noun:Ljava/lang/String;

.field public webCallback:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 89
    new-instance v0, Lmobisocial/osm/Rdl$1;

    invoke-direct {v0}, Lmobisocial/osm/Rdl$1;-><init>()V

    sput-object v0, Lmobisocial/osm/Rdl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/16 v0, 0x9

    iput v0, p0, Lmobisocial/osm/Rdl;->VERSION:I

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/16 v2, 0x9

    iput v2, p0, Lmobisocial/osm/Rdl;->VERSION:I

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 48
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lmobisocial/osm/Rdl;->appName:Ljava/lang/String;

    .line 49
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lmobisocial/osm/Rdl;->noun:Ljava/lang/String;

    .line 50
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lmobisocial/osm/Rdl;->displayTitle:Ljava/lang/String;

    .line 51
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lmobisocial/osm/Rdl;->displayText:Ljava/lang/String;

    .line 52
    const-class v2, Landroid/net/Uri;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lmobisocial/osm/Rdl;->displayThumbnailUri:Landroid/net/Uri;

    .line 53
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lmobisocial/osm/Rdl;->displayCaption:Ljava/lang/String;

    .line 54
    const-class v2, Landroid/net/Uri;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lmobisocial/osm/Rdl;->callback:Landroid/net/Uri;

    .line 55
    const-class v2, Landroid/net/Uri;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lmobisocial/osm/Rdl;->webCallback:Landroid/net/Uri;

    .line 56
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 57
    .local v1, "jsonString":Ljava/lang/String;
    if-eqz v1, :cond_6c

    .line 59
    :try_start_65
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lmobisocial/osm/Rdl;->json:Lorg/json/JSONObject;
    :try_end_6c
    .catch Lorg/json/JSONException; {:try_start_65 .. :try_end_6c} :catch_6d

    .line 64
    :cond_6c
    return-void

    .line 60
    :catch_6d
    move-exception v0

    .line 61
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Landroid/os/ParcelFormatException;

    const-string v3, "Couldn\'t read json"

    invoke-direct {v2, v3}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 73
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget-object v0, p0, Lmobisocial/osm/Rdl;->appName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lmobisocial/osm/Rdl;->noun:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lmobisocial/osm/Rdl;->displayTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lmobisocial/osm/Rdl;->displayText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lmobisocial/osm/Rdl;->displayThumbnailUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lmobisocial/osm/Rdl;->displayCaption:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lmobisocial/osm/Rdl;->callback:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lmobisocial/osm/Rdl;->webCallback:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lmobisocial/osm/Rdl;->json:Lorg/json/JSONObject;

    if-nez v0, :cond_36

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 87
    :goto_35
    return-void

    .line 85
    :cond_36
    iget-object v0, p0, Lmobisocial/osm/Rdl;->json:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    goto :goto_35
.end method
