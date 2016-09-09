.class public Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;
.super Ljava/lang/Object;
.source "ParcelableLDScreenShotPost.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private BlobLink:Ljava/lang/String;

.field private CreationDate:J

.field private Description:Ljava/lang/String;

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

.field private Title:Ljava/lang/String;

.field private Views:J

.field private YouLiked:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 118
    new-instance v0, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost$1;

    invoke-direct {v0}, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost$1;-><init>()V

    sput-object v0, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->PostTags:Ljava/util/ArrayList;

    .line 132
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->PostId:Lmobisocial/longdan/LDProtocols$LDPostId;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmobisocial/longdan/LDProtocols$LDPostId;->Poster:Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->PostId:Lmobisocial/longdan/LDProtocols$LDPostId;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmobisocial/longdan/LDProtocols$LDPostId;->PostType:Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->PostId:Lmobisocial/longdan/LDProtocols$LDPostId;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, v0, Lmobisocial/longdan/LDProtocols$LDPostId;->PostId:[B

    .line 135
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->PostId:Lmobisocial/longdan/LDProtocols$LDPostId;

    iget-object v0, v0, Lmobisocial/longdan/LDProtocols$LDPostId;->PostId:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->Title:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->Description:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->BlobLink:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->PosterName:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->PosterId:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->PosterPictureBlobLink:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->CreationDate:J

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->Likes:J

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->Views:J

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_6f

    const/4 v0, 0x0

    :goto_68
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->YouLiked:Ljava/lang/Boolean;

    .line 146
    return-void

    .line 145
    :cond_6f
    const/4 v0, 0x1

    goto :goto_68
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost$1;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lmobisocial/longdan/LDProtocols$LDScreenShotPost;)V
    .registers 8
    .param p1, "screenshotPost"    # Lmobisocial/longdan/LDProtocols$LDScreenShotPost;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->PostTags:Ljava/util/ArrayList;

    .line 76
    iget-object v3, p1, Lmobisocial/longdan/LDProtocols$LDScreenShotPost;->PostId:Lmobisocial/longdan/LDProtocols$LDPostId;

    iput-object v3, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->PostId:Lmobisocial/longdan/LDProtocols$LDPostId;

    .line 77
    iget-object v3, p1, Lmobisocial/longdan/LDProtocols$LDScreenShotPost;->Title:Ljava/lang/String;

    iput-object v3, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->Title:Ljava/lang/String;

    .line 78
    iget-object v3, p1, Lmobisocial/longdan/LDProtocols$LDScreenShotPost;->Description:Ljava/lang/String;

    if-nez v3, :cond_68

    const-string v3, ""

    :goto_18
    iput-object v3, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->Description:Ljava/lang/String;

    .line 79
    iget-object v3, p1, Lmobisocial/longdan/LDProtocols$LDScreenShotPost;->BlobLinkString:Ljava/lang/String;

    iput-object v3, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->BlobLink:Ljava/lang/String;

    .line 81
    iget-object v3, p1, Lmobisocial/longdan/LDProtocols$LDScreenShotPost;->OmletId:Lmobisocial/longdan/LDProtocols$LDIdentity;

    if-nez v3, :cond_6b

    const-string v0, "(empty)"

    .line 82
    .local v0, "omletIdPrincipal":Ljava/lang/String;
    :goto_24
    iget-object v3, p1, Lmobisocial/longdan/LDProtocols$LDScreenShotPost;->PosterName:Ljava/lang/String;

    if-nez v3, :cond_70

    .end local v0    # "omletIdPrincipal":Ljava/lang/String;
    :goto_28
    iput-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->PosterName:Ljava/lang/String;

    .line 83
    iget-object v3, p1, Lmobisocial/longdan/LDProtocols$LDScreenShotPost;->PostId:Lmobisocial/longdan/LDProtocols$LDPostId;

    iget-object v3, v3, Lmobisocial/longdan/LDProtocols$LDPostId;->Poster:Ljava/lang/String;

    iput-object v3, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->PosterId:Ljava/lang/String;

    .line 84
    iget-object v3, p1, Lmobisocial/longdan/LDProtocols$LDScreenShotPost;->PosterProfilePictureLink:Ljava/lang/String;

    iput-object v3, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->PosterPictureBlobLink:Ljava/lang/String;

    .line 85
    iget-wide v4, p1, Lmobisocial/longdan/LDProtocols$LDScreenShotPost;->CreationDate:J

    iput-wide v4, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->CreationDate:J

    .line 86
    iget-wide v4, p1, Lmobisocial/longdan/LDProtocols$LDScreenShotPost;->Likes:J

    iput-wide v4, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->Likes:J

    .line 87
    iget-wide v4, p1, Lmobisocial/longdan/LDProtocols$LDScreenShotPost;->Views:J

    iput-wide v4, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->Views:J

    .line 88
    iget-object v3, p1, Lmobisocial/longdan/LDProtocols$LDScreenShotPost;->YouLiked:Ljava/lang/Boolean;

    if-nez v3, :cond_73

    const/4 v3, 0x0

    :goto_45
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->YouLiked:Ljava/lang/Boolean;

    .line 89
    iget-object v3, p1, Lmobisocial/longdan/LDProtocols$LDScreenShotPost;->PostTags:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_51
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobisocial/longdan/LDProtocols$LDPostTag;

    .line 90
    .local v2, "tag":Lmobisocial/longdan/LDProtocols$LDPostTag;
    new-instance v1, Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag;

    invoke-direct {v1, v2}, Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag;-><init>(Lmobisocial/longdan/LDProtocols$LDPostTag;)V

    .line 91
    .local v1, "postTag":Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag;
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->PostTags:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_51

    .line 78
    .end local v1    # "postTag":Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag;
    .end local v2    # "tag":Lmobisocial/longdan/LDProtocols$LDPostTag;
    :cond_68
    iget-object v3, p1, Lmobisocial/longdan/LDProtocols$LDScreenShotPost;->Description:Ljava/lang/String;

    goto :goto_18

    .line 81
    :cond_6b
    iget-object v3, p1, Lmobisocial/longdan/LDProtocols$LDScreenShotPost;->OmletId:Lmobisocial/longdan/LDProtocols$LDIdentity;

    iget-object v0, v3, Lmobisocial/longdan/LDProtocols$LDIdentity;->Principal:Ljava/lang/String;

    goto :goto_24

    .line 82
    .restart local v0    # "omletIdPrincipal":Ljava/lang/String;
    :cond_70
    iget-object v0, p1, Lmobisocial/longdan/LDProtocols$LDScreenShotPost;->PosterName:Ljava/lang/String;

    goto :goto_28

    .line 88
    .end local v0    # "omletIdPrincipal":Ljava/lang/String;
    :cond_73
    iget-object v3, p1, Lmobisocial/longdan/LDProtocols$LDScreenShotPost;->YouLiked:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_45

    .line 93
    :cond_7a
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public getBlobLink()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->BlobLink:Ljava/lang/String;

    return-object v0
.end method

.method public getCreationDate()J
    .registers 3

    .prologue
    .line 60
    iget-wide v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->CreationDate:J

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->Description:Ljava/lang/String;

    return-object v0
.end method

.method public getLikes()J
    .registers 3

    .prologue
    .line 64
    iget-wide v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->Likes:J

    return-wide v0
.end method

.method public getPostId()Lmobisocial/longdan/LDProtocols$LDPostId;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->PostId:Lmobisocial/longdan/LDProtocols$LDPostId;

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
    .line 72
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->PostTags:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPosterId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->PosterId:Ljava/lang/String;

    return-object v0
.end method

.method public getPosterName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->PosterName:Ljava/lang/String;

    return-object v0
.end method

.method public getPosterPictureBlobLink()Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->PosterPictureBlobLink:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->Title:Ljava/lang/String;

    return-object v0
.end method

.method public getViews()J
    .registers 3

    .prologue
    .line 52
    iget-wide v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->Views:J

    return-wide v0
.end method

.method public getYouLiked()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->YouLiked:Ljava/lang/Boolean;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->PostId:Lmobisocial/longdan/LDProtocols$LDPostId;

    iget-object v0, v0, Lmobisocial/longdan/LDProtocols$LDPostId;->Poster:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->PostId:Lmobisocial/longdan/LDProtocols$LDPostId;

    iget-object v0, v0, Lmobisocial/longdan/LDProtocols$LDPostId;->PostType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->PostId:Lmobisocial/longdan/LDProtocols$LDPostId;

    iget-object v0, v0, Lmobisocial/longdan/LDProtocols$LDPostId;->PostId:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->PostId:Lmobisocial/longdan/LDProtocols$LDPostId;

    iget-object v0, v0, Lmobisocial/longdan/LDProtocols$LDPostId;->PostId:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 106
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->Title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->Description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->BlobLink:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->PosterName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->PosterId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->PosterPictureBlobLink:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-wide v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->CreationDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 113
    iget-wide v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->Likes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 114
    iget-wide v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->Views:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 115
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->YouLiked:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    const/4 v0, 0x1

    :goto_55
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    return-void

    .line 115
    :cond_59
    const/4 v0, 0x0

    goto :goto_55
.end method
