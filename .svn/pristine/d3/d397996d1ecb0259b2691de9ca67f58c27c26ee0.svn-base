.class public Lmobisocial/osm/OsmHotSpot;
.super Lmobisocial/osm/OsmGroup;
.source "OsmHotSpot.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmobisocial/osm/OsmHotSpot;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public alreadyJoined:Z

.field public hasCoordinates:Z

.field public latitude:D

.field public longitude:D

.field public requiresPin:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    new-instance v0, Lmobisocial/osm/OsmHotSpot$1;

    invoke-direct {v0}, Lmobisocial/osm/OsmHotSpot$1;-><init>()V

    sput-object v0, Lmobisocial/osm/OsmHotSpot;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Lmobisocial/osm/OsmGroup;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 22
    invoke-direct {p0, p1}, Lmobisocial/osm/OsmGroup;-><init>(Landroid/os/Parcel;)V

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2c

    move v0, v1

    :goto_c
    iput-boolean v0, p0, Lmobisocial/osm/OsmHotSpot;->alreadyJoined:Z

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2e

    move v0, v1

    :goto_15
    iput-boolean v0, p0, Lmobisocial/osm/OsmHotSpot;->requiresPin:Z

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_30

    :goto_1d
    iput-boolean v1, p0, Lmobisocial/osm/OsmHotSpot;->hasCoordinates:Z

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lmobisocial/osm/OsmHotSpot;->latitude:D

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lmobisocial/osm/OsmHotSpot;->longitude:D

    .line 28
    return-void

    :cond_2c
    move v0, v2

    .line 23
    goto :goto_c

    :cond_2e
    move v0, v2

    .line 24
    goto :goto_15

    :cond_30
    move v1, v2

    .line 25
    goto :goto_1d
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 37
    iget-boolean v0, p0, Lmobisocial/osm/OsmHotSpot;->alreadyJoined:Z

    if-eqz v0, :cond_27

    move v0, v1

    :goto_7
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 38
    iget-boolean v0, p0, Lmobisocial/osm/OsmHotSpot;->requiresPin:Z

    if-eqz v0, :cond_29

    move v0, v1

    :goto_10
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 39
    iget-boolean v0, p0, Lmobisocial/osm/OsmHotSpot;->hasCoordinates:Z

    if-eqz v0, :cond_2b

    :goto_18
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 40
    iget-wide v0, p0, Lmobisocial/osm/OsmHotSpot;->latitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 41
    iget-wide v0, p0, Lmobisocial/osm/OsmHotSpot;->longitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 42
    return-void

    :cond_27
    move v0, v2

    .line 37
    goto :goto_7

    :cond_29
    move v0, v2

    .line 38
    goto :goto_10

    :cond_2b
    move v1, v2

    .line 39
    goto :goto_18
.end method
