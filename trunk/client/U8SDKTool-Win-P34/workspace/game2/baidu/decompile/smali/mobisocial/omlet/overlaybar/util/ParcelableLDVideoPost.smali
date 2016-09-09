.class public Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;
.super Ljava/lang/Object;
.source "ParcelableLDVideoPost.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private BlobLink:Ljava/lang/String;

.field private CreationDate:J

.field private Description:Ljava/lang/String;

.field private HlsUrl:Ljava/lang/String;

.field private Likes:J

.field private PostId:Lmobisocial/longdan/LDProtocols$LDPostId;

.field private PostTags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag;",
            ">;"
        }
    .end annotation
.end field

.field private PosterId:Ljava/lang/String;

.field private PosterName:Ljava/lang/String;

.field private PosterPictureBlobLink:Ljava/lang/String;

.field private ThumbnailBlob:Ljava/lang/String;

.field private Title:Ljava/lang/String;

.field private Views:J

.field private YouLiked:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 130
    new-instance v0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost$1;

    invoke-direct {v0}, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost$1;-><init>()V

    sput-object v0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->PostTags:Ljava/util/ArrayList;

    .line 144
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->PostId:Lmobisocial/longdan/LDProtocols$LDPostId;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmobisocial/longdan/LDProtocols$LDPostId;->Poster:Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->PostId:Lmobisocial/longdan/LDProtocols$LDPostId;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmobisocial/longdan/LDProtocols$LDPostId;->PostType:Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->PostId:Lmobisocial/longdan/LDProtocols$LDPostId;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, v0, Lmobisocial/longdan/LDProtocols$LDPostId;->PostId:[B

    .line 147
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->PostId:Lmobisocial/longdan/LDProtocols$LDPostId;

    iget-object v0, v0, Lmobisocial/longdan/LDProtocols$LDPostId;->PostId:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->Title:Ljava/lang/String;

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->Description:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->BlobLink:Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->ThumbnailBlob:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->HlsUrl:Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->PosterName:Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->PosterId:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->PosterPictureBlobLink:Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->CreationDate:J

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->Likes:J

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->Views:J

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_7b

    const/4 v0, 0x0

    :goto_74
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->YouLiked:Ljava/lang/Boolean;

    .line 160
    return-void

    .line 159
    :cond_7b
    const/4 v0, 0x1

    goto :goto_74
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost$1;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lmobisocial/longdan/LDProtocols$LDVideoPost;)V
    .registers 8
    .param p1, "videoPost"    # Lmobisocial/longdan/LDProtocols$LDVideoPost;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->PostTags:Ljava/util/ArrayList;

    .line 84
    iget-object v3, p1, Lmobisocial/longdan/LDProtocols$LDVideoPost;->PostId:Lmobisocial/longdan/LDProtocols$LDPostId;

    iput-object v3, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->PostId:Lmobisocial/longdan/LDProtocols$LDPostId;

    .line 85
    iget-object v3, p1, Lmobisocial/longdan/LDProtocols$LDVideoPost;->Title:Ljava/lang/String;

    iput-object v3, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->Title:Ljava/lang/String;

    .line 86
    iget-object v3, p1, Lmobisocial/longdan/LDProtocols$LDVideoPost;->Description:Ljava/lang/String;

    if-nez v3, :cond_70

    const-string v3, ""

    :goto_18
    iput-object v3, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->Description:Ljava/lang/String;

    .line 87
    iget-object v3, p1, Lmobisocial/longdan/LDProtocols$LDVideoPost;->BlobLinkString:Ljava/lang/String;

    iput-object v3, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->BlobLink:Ljava/lang/String;

    .line 88
    iget-object v3, p1, Lmobisocial/longdan/LDProtocols$LDVideoPost;->ThumbnailBlobLinkString:Ljava/lang/String;

    iput-object v3, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->ThumbnailBlob:Ljava/lang/String;

    .line 89
    iget-object v3, p1, Lmobisocial/longdan/LDProtocols$LDVideoPost;->HlsUrl:Ljava/lang/String;

    iput-object v3, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->HlsUrl:Ljava/lang/String;

    .line 91
    iget-object v3, p1, Lmobisocial/longdan/LDProtocols$LDVideoPost;->OmletId:Lmobisocial/longdan/LDProtocols$LDIdentity;

    if-nez v3, :cond_73

    const-string v0, "(empty)"

    .line 92
    .local v0, "omletIdPrincipal":Ljava/lang/String;
    :goto_2c
    iget-object v3, p1, Lmobisocial/longdan/LDProtocols$LDVideoPost;->PosterName:Ljava/lang/String;

    if-nez v3, :cond_78

    .end local v0    # "omletIdPrincipal":Ljava/lang/String;
    :goto_30
    iput-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->PosterName:Ljava/lang/String;

    .line 93
    iget-object v3, p1, Lmobisocial/longdan/LDProtocols$LDVideoPost;->PostId:Lmobisocial/longdan/LDProtocols$LDPostId;

    iget-object v3, v3, Lmobisocial/longdan/LDProtocols$LDPostId;->Poster:Ljava/lang/String;

    iput-object v3, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->PosterId:Ljava/lang/String;

    .line 94
    iget-object v3, p1, Lmobisocial/longdan/LDProtocols$LDVideoPost;->PosterProfilePictureLink:Ljava/lang/String;

    iput-object v3, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->PosterPictureBlobLink:Ljava/lang/String;

    .line 95
    iget-wide v4, p1, Lmobisocial/longdan/LDProtocols$LDVideoPost;->CreationDate:J

    iput-wide v4, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->CreationDate:J

    .line 96
    iget-wide v4, p1, Lmobisocial/longdan/LDProtocols$LDVideoPost;->Likes:J

    iput-wide v4, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->Likes:J

    .line 97
    iget-wide v4, p1, Lmobisocial/longdan/LDProtocols$LDVideoPost;->Views:J

    iput-wide v4, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->Views:J

    .line 98
    iget-object v3, p1, Lmobisocial/longdan/LDProtocols$LDVideoPost;->YouLiked:Ljava/lang/Boolean;

    if-nez v3, :cond_7b

    const/4 v3, 0x0

    :goto_4d
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->YouLiked:Ljava/lang/Boolean;

    .line 99
    iget-object v3, p1, Lmobisocial/longdan/LDProtocols$LDVideoPost;->PostTags:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_59
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_82

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobisocial/longdan/LDProtocols$LDPostTag;

    .line 100
    .local v2, "tag":Lmobisocial/longdan/LDProtocols$LDPostTag;
    new-instance v1, Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag;

    invoke-direct {v1, v2}, Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag;-><init>(Lmobisocial/longdan/LDProtocols$LDPostTag;)V

    .line 101
    .local v1, "postTag":Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag;
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->PostTags:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_59

    .line 86
    .end local v1    # "postTag":Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag;
    .end local v2    # "tag":Lmobisocial/longdan/LDProtocols$LDPostTag;
    :cond_70
    iget-object v3, p1, Lmobisocial/longdan/LDProtocols$LDVideoPost;->Description:Ljava/lang/String;

    goto :goto_18

    .line 91
    :cond_73
    iget-object v3, p1, Lmobisocial/longdan/LDProtocols$LDVideoPost;->OmletId:Lmobisocial/longdan/LDProtocols$LDIdentity;

    iget-object v0, v3, Lmobisocial/longdan/LDProtocols$LDIdentity;->Principal:Ljava/lang/String;

    goto :goto_2c

    .line 92
    .restart local v0    # "omletIdPrincipal":Ljava/lang/String;
    :cond_78
    iget-object v0, p1, Lmobisocial/longdan/LDProtocols$LDVideoPost;->PosterName:Ljava/lang/String;

    goto :goto_30

    .line 98
    .end local v0    # "omletIdPrincipal":Ljava/lang/String;
    :cond_7b
    iget-object v3, p1, Lmobisocial/longdan/LDProtocols$LDVideoPost;->YouLiked:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_4d

    .line 103
    :cond_82
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public getBlobLink()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->BlobLink:Ljava/lang/String;

    return-object v0
.end method

.method public getCreationDate()J
    .registers 3

    .prologue
    .line 64
    iget-wide v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->CreationDate:J

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->Description:Ljava/lang/String;

    return-object v0
.end method

.method public getHlsUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->HlsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLikes()J
    .registers 3

    .prologue
    .line 68
    iget-wide v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->Likes:J

    return-wide v0
.end method

.method public getPostId()Lmobisocial/longdan/LDProtocols$LDPostId;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->PostId:Lmobisocial/longdan/LDProtocols$LDPostId;

    return-object v0
.end method

.method public getPostTags()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->PostTags:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPosterId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->PosterId:Ljava/lang/String;

    return-object v0
.end method

.method public getPosterName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->PosterName:Ljava/lang/String;

    return-object v0
.end method

.method public getPosterPictureBlobLink()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->PosterPictureBlobLink:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailBlob()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->ThumbnailBlob:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->Title:Ljava/lang/String;

    return-object v0
.end method

.method public getViews()J
    .registers 3

    .prologue
    .line 72
    iget-wide v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->Views:J

    return-wide v0
.end method

.method public getYouLiked()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->YouLiked:Ljava/lang/Boolean;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->PostId:Lmobisocial/longdan/LDProtocols$LDPostId;

    iget-object v0, v0, Lmobisocial/longdan/LDProtocols$LDPostId;->Poster:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->PostId:Lmobisocial/longdan/LDProtocols$LDPostId;

    iget-object v0, v0, Lmobisocial/longdan/LDProtocols$LDPostId;->PostType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->PostId:Lmobisocial/longdan/LDProtocols$LDPostId;

    iget-object v0, v0, Lmobisocial/longdan/LDProtocols$LDPostId;->PostId:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->PostId:Lmobisocial/longdan/LDProtocols$LDPostId;

    iget-object v0, v0, Lmobisocial/longdan/LDProtocols$LDPostId;->PostId:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 116
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->Title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->Description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->BlobLink:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->ThumbnailBlob:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->HlsUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->PosterName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->PosterId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->PosterPictureBlobLink:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget-wide v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->CreationDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 125
    iget-wide v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->Likes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 126
    iget-wide v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->Views:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 127
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->YouLiked:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    const/4 v0, 0x1

    :goto_5f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    return-void

    .line 127
    :cond_63
    const/4 v0, 0x0

    goto :goto_5f
.end method
