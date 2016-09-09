.class public Lmobisocial/osm/OsmGroup;
.super Ljava/lang/Object;
.source "OsmGroup.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmobisocial/osm/OsmGroup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public identifier:Ljava/lang/String;

.field public memberCount:I

.field public name:Ljava/lang/String;

.field public thumbnailHash:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    new-instance v0, Lmobisocial/osm/OsmGroup$1;

    invoke-direct {v0}, Lmobisocial/osm/OsmGroup$1;-><init>()V

    sput-object v0, Lmobisocial/osm/OsmGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmobisocial/osm/OsmGroup;->identifier:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmobisocial/osm/OsmGroup;->name:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lmobisocial/osm/OsmGroup;->memberCount:I

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 25
    .local v0, "length":I
    if-lez v0, :cond_24

    .line 26
    new-array v1, v0, [B

    iput-object v1, p0, Lmobisocial/osm/OsmGroup;->thumbnailHash:[B

    .line 27
    iget-object v1, p0, Lmobisocial/osm/OsmGroup;->thumbnailHash:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 29
    :cond_24
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lmobisocial/osm/OsmGroup;->identifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lmobisocial/osm/OsmGroup;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget v0, p0, Lmobisocial/osm/OsmGroup;->memberCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget-object v0, p0, Lmobisocial/osm/OsmGroup;->thumbnailHash:[B

    if-nez v0, :cond_18

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    :goto_17
    return-void

    .line 44
    :cond_18
    iget-object v0, p0, Lmobisocial/osm/OsmGroup;->thumbnailHash:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget-object v0, p0, Lmobisocial/osm/OsmGroup;->thumbnailHash:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_17
.end method
