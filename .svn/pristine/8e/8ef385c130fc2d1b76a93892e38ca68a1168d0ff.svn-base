.class public abstract Lmobisocial/osm/IOsmService$Stub;
.super Landroid/os/Binder;
.source "IOsmService.java"

# interfaces
.implements Lmobisocial/osm/IOsmService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/osm/IOsmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/osm/IOsmService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "mobisocial.osm.IOsmService"

.field static final TRANSACTION_addIdentitiesToFeed:I = 0x15

.field static final TRANSACTION_addRawIdentitiesToFeed:I = 0x16

.field static final TRANSACTION_createControlFeed:I = 0x7

.field static final TRANSACTION_createControlFeedWithMembers:I = 0x14

.field static final TRANSACTION_createFeed:I = 0x5

.field static final TRANSACTION_createFeedWithMembers:I = 0x6

.field static final TRANSACTION_getHotSpots:I = 0xf

.field static final TRANSACTION_getLocalBlobPath:I = 0x18

.field static final TRANSACTION_getLocalBlobPaths:I = 0x19

.field static final TRANSACTION_getSyncLimit:I = 0xd

.field static final TRANSACTION_isBlobAvailable:I = 0x10

.field static final TRANSACTION_isBlobAvailableMulti:I = 0x11

.field static final TRANSACTION_isLoggedIn:I = 0x9

.field static final TRANSACTION_lookupIdentities:I = 0xe

.field static final TRANSACTION_removeIdentitiesFromFeed:I = 0x17

.field static final TRANSACTION_requestBlob:I = 0xb

.field static final TRANSACTION_requestBlobs:I = 0xa

.field static final TRANSACTION_requestSyncLimit:I = 0xc

.field static final TRANSACTION_sendAnimatedGif:I = 0x3

.field static final TRANSACTION_sendContentFromIntent:I = 0x13

.field static final TRANSACTION_sendObj:I = 0x12

.field static final TRANSACTION_sendPicture:I = 0x1

.field static final TRANSACTION_sendRdl:I = 0x4

.field static final TRANSACTION_sendText:I = 0x2

.field static final TRANSACTION_updateFeedDetails:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "mobisocial.osm.IOsmService"

    invoke-virtual {p0, p0, v0}, Lmobisocial/osm/IOsmService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmobisocial/osm/IOsmService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 27
    if-nez p0, :cond_4

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_3
    return-object v0

    .line 30
    :cond_4
    const-string v1, "mobisocial.osm.IOsmService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lmobisocial/osm/IOsmService;

    if-eqz v1, :cond_13

    .line 32
    check-cast v0, Lmobisocial/osm/IOsmService;

    goto :goto_3

    .line 34
    :cond_13
    new-instance v0, Lmobisocial/osm/IOsmService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lmobisocial/osm/IOsmService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 44
    sparse-switch p1, :sswitch_data_3aa

    .line 442
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_9
    return v7

    .line 47
    :sswitch_a
    const-string v6, "mobisocial.osm.IOsmService"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 52
    :sswitch_10
    const-string v6, "mobisocial.osm.IOsmService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_38

    .line 55
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 60
    .local v0, "_arg0":Landroid/net/Uri;
    :goto_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3a

    .line 61
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 65
    .local v2, "_arg1":Landroid/net/Uri;
    :goto_31
    invoke-virtual {p0, v0, v2}, Lmobisocial/osm/IOsmService$Stub;->sendPicture(Landroid/net/Uri;Landroid/net/Uri;)V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 57
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v2    # "_arg1":Landroid/net/Uri;
    :cond_38
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/Uri;
    goto :goto_23

    .line 63
    :cond_3a
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/net/Uri;
    goto :goto_31

    .line 71
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v2    # "_arg1":Landroid/net/Uri;
    :sswitch_3c
    const-string v6, "mobisocial.osm.IOsmService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5a

    .line 74
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 79
    .restart local v0    # "_arg0":Landroid/net/Uri;
    :goto_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lmobisocial/osm/IOsmService$Stub;->sendText(Landroid/net/Uri;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 76
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v2    # "_arg1":Ljava/lang/String;
    :cond_5a
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/Uri;
    goto :goto_4f

    .line 86
    .end local v0    # "_arg0":Landroid/net/Uri;
    :sswitch_5c
    const-string v6, "mobisocial.osm.IOsmService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_84

    .line 89
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 94
    .restart local v0    # "_arg0":Landroid/net/Uri;
    :goto_6f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_86

    .line 95
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 99
    .local v2, "_arg1":Landroid/net/Uri;
    :goto_7d
    invoke-virtual {p0, v0, v2}, Lmobisocial/osm/IOsmService$Stub;->sendAnimatedGif(Landroid/net/Uri;Landroid/net/Uri;)V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 91
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v2    # "_arg1":Landroid/net/Uri;
    :cond_84
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/Uri;
    goto :goto_6f

    .line 97
    :cond_86
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/net/Uri;
    goto :goto_7d

    .line 105
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v2    # "_arg1":Landroid/net/Uri;
    :sswitch_88
    const-string v6, "mobisocial.osm.IOsmService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b1

    .line 108
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 113
    .restart local v0    # "_arg0":Landroid/net/Uri;
    :goto_9b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b3

    .line 114
    sget-object v6, Lmobisocial/osm/Rdl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobisocial/osm/Rdl;

    .line 118
    .local v2, "_arg1":Lmobisocial/osm/Rdl;
    :goto_a9
    invoke-virtual {p0, v0, v2}, Lmobisocial/osm/IOsmService$Stub;->sendRdl(Landroid/net/Uri;Lmobisocial/osm/Rdl;)V

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 110
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v2    # "_arg1":Lmobisocial/osm/Rdl;
    :cond_b1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/Uri;
    goto :goto_9b

    .line 116
    :cond_b3
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Lmobisocial/osm/Rdl;
    goto :goto_a9

    .line 124
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v2    # "_arg1":Lmobisocial/osm/Rdl;
    :sswitch_b5
    const-string v8, "mobisocial.osm.IOsmService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_e1

    .line 129
    sget-object v8, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 134
    .local v2, "_arg1":Landroid/net/Uri;
    :goto_cc
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v1

    .line 135
    .local v1, "_arg2":[J
    invoke-virtual {p0, v0, v2, v1}, Lmobisocial/osm/IOsmService$Stub;->createFeed(Ljava/lang/String;Landroid/net/Uri;[J)Landroid/net/Uri;

    move-result-object v4

    .line 136
    .local v4, "_result":Landroid/net/Uri;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    if-eqz v4, :cond_e3

    .line 138
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    invoke-virtual {v4, p3, v7}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 131
    .end local v1    # "_arg2":[J
    .end local v2    # "_arg1":Landroid/net/Uri;
    .end local v4    # "_result":Landroid/net/Uri;
    :cond_e1
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/net/Uri;
    goto :goto_cc

    .line 141
    .restart local v1    # "_arg2":[J
    .restart local v4    # "_result":Landroid/net/Uri;
    :cond_e3
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 147
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg2":[J
    .end local v2    # "_arg1":Landroid/net/Uri;
    .end local v4    # "_result":Landroid/net/Uri;
    :sswitch_e8
    const-string v8, "mobisocial.osm.IOsmService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    .line 150
    .local v0, "_arg0":[J
    invoke-virtual {p0, v0}, Lmobisocial/osm/IOsmService$Stub;->createFeedWithMembers([J)Landroid/net/Uri;

    move-result-object v4

    .line 151
    .restart local v4    # "_result":Landroid/net/Uri;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    if-eqz v4, :cond_102

    .line 153
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    invoke-virtual {v4, p3, v7}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 156
    :cond_102
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 162
    .end local v0    # "_arg0":[J
    .end local v4    # "_result":Landroid/net/Uri;
    :sswitch_107
    const-string v8, "mobisocial.osm.IOsmService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lmobisocial/osm/IOsmService$Stub;->createControlFeed()Landroid/net/Uri;

    move-result-object v4

    .line 164
    .restart local v4    # "_result":Landroid/net/Uri;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    if-eqz v4, :cond_11d

    .line 166
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    invoke-virtual {v4, p3, v7}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 169
    :cond_11d
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 175
    .end local v4    # "_result":Landroid/net/Uri;
    :sswitch_122
    const-string v6, "mobisocial.osm.IOsmService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_14f

    .line 178
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 183
    .local v0, "_arg0":Landroid/net/Uri;
    :goto_135
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_151

    .line 186
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 190
    .local v1, "_arg2":Landroid/net/Uri;
    :goto_147
    invoke-virtual {p0, v0, v2, v1}, Lmobisocial/osm/IOsmService$Stub;->updateFeedDetails(Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;)V

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 180
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v1    # "_arg2":Landroid/net/Uri;
    .end local v2    # "_arg1":Ljava/lang/String;
    :cond_14f
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/Uri;
    goto :goto_135

    .line 188
    .restart local v2    # "_arg1":Ljava/lang/String;
    :cond_151
    const/4 v1, 0x0

    .restart local v1    # "_arg2":Landroid/net/Uri;
    goto :goto_147

    .line 196
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v1    # "_arg2":Landroid/net/Uri;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_153
    const-string v8, "mobisocial.osm.IOsmService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lmobisocial/osm/IOsmService$Stub;->isLoggedIn()Z

    move-result v4

    .line 198
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    if-eqz v4, :cond_162

    move v6, v7

    :cond_162
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 204
    .end local v4    # "_result":Z
    :sswitch_167
    const-string v6, "mobisocial.osm.IOsmService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/Uri;

    .line 208
    .local v0, "_arg0":[Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_192

    .line 209
    sget-object v6, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    .line 214
    .local v2, "_arg1":Landroid/os/Messenger;
    :goto_182
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/Bundle;

    .line 215
    .local v1, "_arg2":[Landroid/os/Bundle;
    invoke-virtual {p0, v0, v2, v1}, Lmobisocial/osm/IOsmService$Stub;->requestBlobs([Landroid/net/Uri;Landroid/os/Messenger;[Landroid/os/Bundle;)V

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 211
    .end local v1    # "_arg2":[Landroid/os/Bundle;
    .end local v2    # "_arg1":Landroid/os/Messenger;
    :cond_192
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Messenger;
    goto :goto_182

    .line 221
    .end local v0    # "_arg0":[Landroid/net/Uri;
    .end local v2    # "_arg1":Landroid/os/Messenger;
    :sswitch_194
    const-string v6, "mobisocial.osm.IOsmService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1cb

    .line 224
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 229
    .local v0, "_arg0":Landroid/net/Uri;
    :goto_1a7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1cd

    .line 230
    sget-object v6, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    .line 235
    .restart local v2    # "_arg1":Landroid/os/Messenger;
    :goto_1b5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1cf

    .line 236
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 240
    .local v1, "_arg2":Landroid/os/Bundle;
    :goto_1c3
    invoke-virtual {p0, v0, v2, v1}, Lmobisocial/osm/IOsmService$Stub;->requestBlob(Landroid/net/Uri;Landroid/os/Messenger;Landroid/os/Bundle;)V

    .line 241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 226
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v1    # "_arg2":Landroid/os/Bundle;
    .end local v2    # "_arg1":Landroid/os/Messenger;
    :cond_1cb
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/Uri;
    goto :goto_1a7

    .line 232
    :cond_1cd
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Messenger;
    goto :goto_1b5

    .line 238
    :cond_1cf
    const/4 v1, 0x0

    .restart local v1    # "_arg2":Landroid/os/Bundle;
    goto :goto_1c3

    .line 246
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v1    # "_arg2":Landroid/os/Bundle;
    .end local v2    # "_arg1":Landroid/os/Messenger;
    :sswitch_1d1
    const-string v8, "mobisocial.osm.IOsmService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1f7

    .line 249
    sget-object v8, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 254
    .restart local v0    # "_arg0":Landroid/net/Uri;
    :goto_1e4
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 255
    .local v2, "_arg1":J
    invoke-virtual {p0, v0, v2, v3}, Lmobisocial/osm/IOsmService$Stub;->requestSyncLimit(Landroid/net/Uri;J)Z

    move-result v4

    .line 256
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    if-eqz v4, :cond_1f2

    move v6, v7

    :cond_1f2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 251
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v2    # "_arg1":J
    .end local v4    # "_result":Z
    :cond_1f7
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/Uri;
    goto :goto_1e4

    .line 262
    .end local v0    # "_arg0":Landroid/net/Uri;
    :sswitch_1f9
    const-string v6, "mobisocial.osm.IOsmService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_218

    .line 265
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 269
    .restart local v0    # "_arg0":Landroid/net/Uri;
    :goto_20c
    invoke-virtual {p0, v0}, Lmobisocial/osm/IOsmService$Stub;->getSyncLimit(Landroid/net/Uri;)J

    move-result-wide v4

    .line 270
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 267
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v4    # "_result":J
    :cond_218
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/Uri;
    goto :goto_20c

    .line 276
    .end local v0    # "_arg0":Landroid/net/Uri;
    :sswitch_21a
    const-string v8, "mobisocial.osm.IOsmService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "_arg0":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_236

    move v2, v7

    .line 281
    .local v2, "_arg1":Z
    :goto_22a
    invoke-virtual {p0, v0, v2}, Lmobisocial/osm/IOsmService$Stub;->lookupIdentities([Ljava/lang/String;Z)[J

    move-result-object v4

    .line 282
    .local v4, "_result":[J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeLongArray([J)V

    goto/16 :goto_9

    .end local v2    # "_arg1":Z
    .end local v4    # "_result":[J
    :cond_236
    move v2, v6

    .line 280
    goto :goto_22a

    .line 288
    .end local v0    # "_arg0":[Ljava/lang/String;
    :sswitch_238
    const-string v6, "mobisocial.osm.IOsmService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0}, Lmobisocial/osm/IOsmService$Stub;->getHotSpots()[Lmobisocial/osm/OsmHotSpot;

    move-result-object v4

    .line 290
    .local v4, "_result":[Lmobisocial/osm/OsmHotSpot;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    invoke-virtual {p3, v4, v7}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_9

    .line 296
    .end local v4    # "_result":[Lmobisocial/osm/OsmHotSpot;
    :sswitch_249
    const-string v8, "mobisocial.osm.IOsmService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_26b

    .line 299
    sget-object v8, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 303
    .local v0, "_arg0":Landroid/net/Uri;
    :goto_25c
    invoke-virtual {p0, v0}, Lmobisocial/osm/IOsmService$Stub;->isBlobAvailable(Landroid/net/Uri;)Z

    move-result v4

    .line 304
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    if-eqz v4, :cond_266

    move v6, v7

    :cond_266
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 301
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v4    # "_result":Z
    :cond_26b
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/Uri;
    goto :goto_25c

    .line 310
    .end local v0    # "_arg0":Landroid/net/Uri;
    :sswitch_26d
    const-string v6, "mobisocial.osm.IOsmService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/Uri;

    .line 313
    .local v0, "_arg0":[Landroid/net/Uri;
    invoke-virtual {p0, v0}, Lmobisocial/osm/IOsmService$Stub;->isBlobAvailableMulti([Landroid/net/Uri;)[Z

    move-result-object v4

    .line 314
    .local v4, "_result":[Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    goto/16 :goto_9

    .line 320
    .end local v0    # "_arg0":[Landroid/net/Uri;
    .end local v4    # "_result":[Z
    :sswitch_286
    const-string v6, "mobisocial.osm.IOsmService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2a9

    .line 323
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 328
    .local v0, "_arg0":Landroid/net/Uri;
    :goto_299
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 330
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 331
    .local v1, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v1}, Lmobisocial/osm/IOsmService$Stub;->sendObj(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 325
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v1    # "_arg2":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :cond_2a9
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/Uri;
    goto :goto_299

    .line 337
    .end local v0    # "_arg0":Landroid/net/Uri;
    :sswitch_2ab
    const-string v6, "mobisocial.osm.IOsmService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2d4

    .line 340
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 345
    .restart local v0    # "_arg0":Landroid/net/Uri;
    :goto_2be
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2d6

    .line 346
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 350
    .local v2, "_arg1":Landroid/content/Intent;
    :goto_2cc
    invoke-virtual {p0, v0, v2}, Lmobisocial/osm/IOsmService$Stub;->sendContentFromIntent(Landroid/net/Uri;Landroid/content/Intent;)V

    .line 351
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 342
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v2    # "_arg1":Landroid/content/Intent;
    :cond_2d4
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/Uri;
    goto :goto_2be

    .line 348
    :cond_2d6
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/content/Intent;
    goto :goto_2cc

    .line 356
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v2    # "_arg1":Landroid/content/Intent;
    :sswitch_2d8
    const-string v8, "mobisocial.osm.IOsmService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    .line 359
    .local v0, "_arg0":[J
    invoke-virtual {p0, v0}, Lmobisocial/osm/IOsmService$Stub;->createControlFeedWithMembers([J)Landroid/net/Uri;

    move-result-object v4

    .line 360
    .local v4, "_result":Landroid/net/Uri;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    if-eqz v4, :cond_2f2

    .line 362
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    invoke-virtual {v4, p3, v7}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 365
    :cond_2f2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 371
    .end local v0    # "_arg0":[J
    .end local v4    # "_result":Landroid/net/Uri;
    :sswitch_2f7
    const-string v8, "mobisocial.osm.IOsmService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_31d

    .line 374
    sget-object v8, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 379
    .local v0, "_arg0":Landroid/net/Uri;
    :goto_30a
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v2

    .line 380
    .local v2, "_arg1":[J
    invoke-virtual {p0, v0, v2}, Lmobisocial/osm/IOsmService$Stub;->addIdentitiesToFeed(Landroid/net/Uri;[J)Z

    move-result v4

    .line 381
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    if-eqz v4, :cond_318

    move v6, v7

    :cond_318
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 376
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v2    # "_arg1":[J
    .end local v4    # "_result":Z
    :cond_31d
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/Uri;
    goto :goto_30a

    .line 387
    .end local v0    # "_arg0":Landroid/net/Uri;
    :sswitch_31f
    const-string v8, "mobisocial.osm.IOsmService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_345

    .line 390
    sget-object v8, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 395
    .restart local v0    # "_arg0":Landroid/net/Uri;
    :goto_332
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 396
    .local v2, "_arg1":[Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lmobisocial/osm/IOsmService$Stub;->addRawIdentitiesToFeed(Landroid/net/Uri;[Ljava/lang/String;)Z

    move-result v4

    .line 397
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    if-eqz v4, :cond_340

    move v6, v7

    :cond_340
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 392
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v2    # "_arg1":[Ljava/lang/String;
    .end local v4    # "_result":Z
    :cond_345
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/Uri;
    goto :goto_332

    .line 403
    .end local v0    # "_arg0":Landroid/net/Uri;
    :sswitch_347
    const-string v8, "mobisocial.osm.IOsmService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_36d

    .line 406
    sget-object v8, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 411
    .restart local v0    # "_arg0":Landroid/net/Uri;
    :goto_35a
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v2

    .line 412
    .local v2, "_arg1":[J
    invoke-virtual {p0, v0, v2}, Lmobisocial/osm/IOsmService$Stub;->removeIdentitiesFromFeed(Landroid/net/Uri;[J)Z

    move-result v4

    .line 413
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    if-eqz v4, :cond_368

    move v6, v7

    :cond_368
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 408
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v2    # "_arg1":[J
    .end local v4    # "_result":Z
    :cond_36d
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/Uri;
    goto :goto_35a

    .line 419
    .end local v0    # "_arg0":Landroid/net/Uri;
    :sswitch_36f
    const-string v6, "mobisocial.osm.IOsmService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_38e

    .line 422
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 426
    .restart local v0    # "_arg0":Landroid/net/Uri;
    :goto_382
    invoke-virtual {p0, v0}, Lmobisocial/osm/IOsmService$Stub;->getLocalBlobPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 427
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 424
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v4    # "_result":Ljava/lang/String;
    :cond_38e
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/Uri;
    goto :goto_382

    .line 433
    .end local v0    # "_arg0":Landroid/net/Uri;
    :sswitch_390
    const-string v6, "mobisocial.osm.IOsmService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 435
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/Uri;

    .line 436
    .local v0, "_arg0":[Landroid/net/Uri;
    invoke-virtual {p0, v0}, Lmobisocial/osm/IOsmService$Stub;->getLocalBlobPaths([Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v4

    .line 437
    .local v4, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_9

    .line 44
    nop

    :sswitch_data_3aa
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_3c
        0x3 -> :sswitch_5c
        0x4 -> :sswitch_88
        0x5 -> :sswitch_b5
        0x6 -> :sswitch_e8
        0x7 -> :sswitch_107
        0x8 -> :sswitch_122
        0x9 -> :sswitch_153
        0xa -> :sswitch_167
        0xb -> :sswitch_194
        0xc -> :sswitch_1d1
        0xd -> :sswitch_1f9
        0xe -> :sswitch_21a
        0xf -> :sswitch_238
        0x10 -> :sswitch_249
        0x11 -> :sswitch_26d
        0x12 -> :sswitch_286
        0x13 -> :sswitch_2ab
        0x14 -> :sswitch_2d8
        0x15 -> :sswitch_2f7
        0x16 -> :sswitch_31f
        0x17 -> :sswitch_347
        0x18 -> :sswitch_36f
        0x19 -> :sswitch_390
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
