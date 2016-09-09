.class public Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "NotificationItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$UserClickableSpan;,
        Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$ViewHolder;,
        Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;,
        Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiTestData;
    }
.end annotation


# instance fields
.field _NotiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiTestData;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 61
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;->mContext:Landroid/content/Context;

    .line 62
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;->_NotiList:Ljava/util/List;

    .line 63
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    const/4 v5, 0x7

    if-ge v1, v5, :cond_1aa

    .line 64
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiTestData;

    invoke-direct {v0, p0}, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiTestData;-><init>(Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;)V

    .line 65
    .local v0, "data":Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiTestData;
    new-instance v2, Lmobisocial/longdan/LDProtocols$LDPostId;

    invoke-direct {v2}, Lmobisocial/longdan/LDProtocols$LDPostId;-><init>()V

    .line 67
    .local v2, "postId":Lmobisocial/longdan/LDProtocols$LDPostId;
    const-string v5, "poster"

    iput-object v5, v2, Lmobisocial/longdan/LDProtocols$LDPostId;->Poster:Ljava/lang/String;

    .line 68
    const/4 v5, 0x0

    new-array v5, v5, [B

    iput-object v5, v2, Lmobisocial/longdan/LDProtocols$LDPostId;->PostId:[B

    .line 70
    const-string v5, "video"

    iput-object v5, v2, Lmobisocial/longdan/LDProtocols$LDPostId;->PostType:Ljava/lang/String;

    .line 71
    new-instance v5, Lmobisocial/longdan/LDProtocols$LDPostContainer;

    invoke-direct {v5}, Lmobisocial/longdan/LDProtocols$LDPostContainer;-><init>()V

    iput-object v5, v0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiTestData;->postContainer:Lmobisocial/longdan/LDProtocols$LDPostContainer;

    .line 72
    new-instance v4, Lmobisocial/longdan/LDProtocols$LDVideoPost;

    invoke-direct {v4}, Lmobisocial/longdan/LDProtocols$LDVideoPost;-><init>()V

    .line 73
    .local v4, "videoPost":Lmobisocial/longdan/LDProtocols$LDVideoPost;
    const-string v5, ""

    iput-object v5, v4, Lmobisocial/longdan/LDProtocols$LDVideoPost;->Description:Ljava/lang/String;

    .line 74
    const-string v5, ""

    iput-object v5, v4, Lmobisocial/longdan/LDProtocols$LDVideoPost;->BlobLinkString:Ljava/lang/String;

    .line 75
    const-string v5, ""

    iput-object v5, v4, Lmobisocial/longdan/LDProtocols$LDVideoPost;->HlsUrl:Ljava/lang/String;

    .line 76
    const-string v5, ""

    iput-object v5, v4, Lmobisocial/longdan/LDProtocols$LDVideoPost;->ThumbnailBlobLinkString:Ljava/lang/String;

    .line 77
    const-wide/16 v6, 0x3e7

    iput-wide v6, v4, Lmobisocial/longdan/LDProtocols$LDVideoPost;->Views:J

    .line 78
    const-wide/16 v6, 0x64

    iput-wide v6, v4, Lmobisocial/longdan/LDProtocols$LDVideoPost;->Likes:J

    .line 79
    iput-object v2, v4, Lmobisocial/longdan/LDProtocols$LDVideoPost;->PostId:Lmobisocial/longdan/LDProtocols$LDPostId;

    .line 80
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v4, Lmobisocial/longdan/LDProtocols$LDVideoPost;->YouLiked:Ljava/lang/Boolean;

    .line 81
    const-wide/16 v6, 0x0

    iput-wide v6, v4, Lmobisocial/longdan/LDProtocols$LDVideoPost;->CreationDate:J

    .line 82
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lmobisocial/longdan/LDProtocols$LDVideoPost;->PostTags:Ljava/util/List;

    .line 83
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v3, "user":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    packed-switch v1, :pswitch_data_1ac

    .line 170
    :goto_67
    iput-object v3, v0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiTestData;->userList:Ljava/util/List;

    .line 171
    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;->_NotiList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 86
    :pswitch_71
    sget-object v5, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;->Like:Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;

    iput-object v5, v0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiTestData;->notiType:Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;

    .line 88
    const-string v5, "\u5200\u5854\u4f20\u5947 \u89c9\u9192\u5c0f\u9ed1\u8bc4\u6d4b\uff01"

    iput-object v5, v4, Lmobisocial/longdan/LDProtocols$LDVideoPost;->Title:Ljava/lang/String;

    .line 90
    const-string v5, "Connie"

    iput-object v5, v4, Lmobisocial/longdan/LDProtocols$LDVideoPost;->PosterName:Ljava/lang/String;

    .line 91
    iget-object v5, v0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiTestData;->postContainer:Lmobisocial/longdan/LDProtocols$LDPostContainer;

    iput-object v4, v5, Lmobisocial/longdan/LDProtocols$LDPostContainer;->VideoPost:Lmobisocial/longdan/LDProtocols$LDVideoPost;

    .line 93
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u559c\u6b22\u60a8\u7684\u8d34\u6587\u201c"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lmobisocial/longdan/LDProtocols$LDVideoPost;->Title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u201d\u3002"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiTestData;->message:Ljava/lang/String;

    .line 95
    const-string v5, "Iron Man"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_67

    .line 98
    :pswitch_a4
    sget-object v5, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;->Like:Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;

    iput-object v5, v0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiTestData;->notiType:Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;

    .line 100
    const-string v5, "\u5200\u5854\u4f20\u5947 \u7ade\u6280\u573a\u7834\u89e3\u4ed9\u5973\u9f99\u9632\u5b88\u961f"

    iput-object v5, v4, Lmobisocial/longdan/LDProtocols$LDVideoPost;->Title:Ljava/lang/String;

    .line 102
    const-string v5, "Connie"

    iput-object v5, v4, Lmobisocial/longdan/LDProtocols$LDVideoPost;->PosterName:Ljava/lang/String;

    .line 103
    iget-object v5, v0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiTestData;->postContainer:Lmobisocial/longdan/LDProtocols$LDPostContainer;

    iput-object v4, v5, Lmobisocial/longdan/LDProtocols$LDPostContainer;->VideoPost:Lmobisocial/longdan/LDProtocols$LDVideoPost;

    .line 105
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u559c\u6b22\u60a8\u7684\u8d34\u6587\u201c"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lmobisocial/longdan/LDProtocols$LDVideoPost;->Title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u201d\u3002"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiTestData;->message:Ljava/lang/String;

    .line 107
    const-string v5, "Thor"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    const-string v5, "Black Widow"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_67

    .line 112
    :pswitch_dc
    sget-object v5, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;->Like:Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;

    iput-object v5, v0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiTestData;->notiType:Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;

    .line 114
    const-string v5, "\u5be6\u6cc1\u62bd\u4ed9\u5973\u9f8d~\u76f4\u63a5\u6253\u8af8\u738b\uff01"

    iput-object v5, v4, Lmobisocial/longdan/LDProtocols$LDVideoPost;->Title:Ljava/lang/String;

    .line 116
    const-string v5, "Connie"

    iput-object v5, v4, Lmobisocial/longdan/LDProtocols$LDVideoPost;->PosterName:Ljava/lang/String;

    .line 117
    iget-object v5, v0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiTestData;->postContainer:Lmobisocial/longdan/LDProtocols$LDPostContainer;

    iput-object v4, v5, Lmobisocial/longdan/LDProtocols$LDPostContainer;->VideoPost:Lmobisocial/longdan/LDProtocols$LDVideoPost;

    .line 119
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u559c\u6b22\u60a8\u7684\u8d34\u6587\u201c"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lmobisocial/longdan/LDProtocols$LDVideoPost;->Title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u201d\u3002"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiTestData;->message:Ljava/lang/String;

    .line 121
    const-string v5, "Hawkeye"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    const-string v5, "Thor"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    const-string v5, "Pepper"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_67

    .line 128
    :pswitch_11a
    sget-object v5, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;->Like:Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;

    iput-object v5, v0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiTestData;->notiType:Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;

    .line 130
    const-string v5, "\u5200\u5854\u4f20\u5947 \u730e\u9b54\u4eba\u4e09\u67aa\u79d2\u6740\u5438\u8840\u9b3cBOSS\uff01"

    iput-object v5, v4, Lmobisocial/longdan/LDProtocols$LDVideoPost;->Title:Ljava/lang/String;

    .line 132
    const-string v5, "Connie"

    iput-object v5, v4, Lmobisocial/longdan/LDProtocols$LDVideoPost;->PosterName:Ljava/lang/String;

    .line 133
    iget-object v5, v0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiTestData;->postContainer:Lmobisocial/longdan/LDProtocols$LDPostContainer;

    iput-object v4, v5, Lmobisocial/longdan/LDProtocols$LDPostContainer;->VideoPost:Lmobisocial/longdan/LDProtocols$LDVideoPost;

    .line 135
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u559c\u6b22\u60a8\u7684\u8d34\u6587\u201c"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lmobisocial/longdan/LDProtocols$LDVideoPost;->Title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u201d\u3002"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiTestData;->message:Ljava/lang/String;

    .line 137
    const-string v5, "Pepper"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    const-string v5, "Thor"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    const-string v5, "Hulk"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    const-string v5, "Iron Man"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_67

    .line 146
    :pswitch_15d
    sget-object v5, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;->System:Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;

    iput-object v5, v0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiTestData;->notiType:Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;

    .line 148
    const-string v5, "\u4eb2\u7231\u7684\u7528\u6237\u60a8\u597d\uff0c\u5f88\u62b1\u6b49\u56e0\u60a8\u7684\u8d34\u6587\u201c\u5f39\u5f39\u5802!!!!!!\u201d\u5185\u5bb9\u4e0d\u9002\u5f53\uff0c\u62cd\u5427\u5df2\u7ecf\u5c06\u6b64\u8d34\u6587\u4ece\u7cfb\u7edf\u4e2d\u5220\u9664\uff01"

    iput-object v5, v0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiTestData;->message:Ljava/lang/String;

    goto/16 :goto_67

    .line 151
    :pswitch_167
    sget-object v5, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;->Follow:Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;

    iput-object v5, v0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiTestData;->notiType:Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;

    .line 153
    const-string v5, "\u958b\u59cb\u95dc\u6ce8\u4f60\uff01"

    iput-object v5, v0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiTestData;->message:Ljava/lang/String;

    .line 155
    const-string v5, "Captain America"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_67

    .line 158
    :pswitch_176
    sget-object v5, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;->Share:Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;

    iput-object v5, v0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiTestData;->notiType:Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;

    .line 160
    const-string v5, "\u5200\u5854\u4f20\u5947 \u83dc\u5200\u961f\u7684\u9006\u88ad\uff0c\u780d\u51fa\u4e00\u7247\u5929\uff01"

    iput-object v5, v4, Lmobisocial/longdan/LDProtocols$LDVideoPost;->Title:Ljava/lang/String;

    .line 162
    const-string v5, "Pepper"

    iput-object v5, v4, Lmobisocial/longdan/LDProtocols$LDVideoPost;->PosterName:Ljava/lang/String;

    .line 163
    iget-object v5, v0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiTestData;->postContainer:Lmobisocial/longdan/LDProtocols$LDPostContainer;

    iput-object v4, v5, Lmobisocial/longdan/LDProtocols$LDPostContainer;->VideoPost:Lmobisocial/longdan/LDProtocols$LDVideoPost;

    .line 165
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5c07\u8d34\u6587\u201c"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lmobisocial/longdan/LDProtocols$LDVideoPost;->Title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u201d\u5206\u4eab\u7d66\u4f60\uff01"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiTestData;->message:Ljava/lang/String;

    .line 167
    const-string v5, "Loki"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_67

    .line 173
    .end local v0    # "data":Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiTestData;
    .end local v2    # "postId":Lmobisocial/longdan/LDProtocols$LDPostId;
    .end local v3    # "user":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "videoPost":Lmobisocial/longdan/LDProtocols$LDVideoPost;
    :cond_1aa
    return-void

    .line 84
    nop

    :pswitch_data_1ac
    .packed-switch 0x0
        :pswitch_71
        :pswitch_a4
        :pswitch_dc
        :pswitch_11a
        :pswitch_15d
        :pswitch_167
        :pswitch_176
    .end packed-switch
.end method

.method static synthetic access$100(Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;

    .prologue
    .line 29
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private setMessageTextView(Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$ViewHolder;Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiTestData;)V
    .registers 15
    .param p1, "holder"    # Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$ViewHolder;
    .param p2, "noti"    # Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiTestData;

    .prologue
    const/4 v11, 0x2

    .line 298
    const-string v5, ""

    .line 299
    .local v5, "userListString":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v7, p2, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiTestData;->userList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_e

    .line 300
    if-le v0, v11, :cond_ad

    .line 306
    :cond_e
    const-string v1, ""

    .line 307
    .local v1, "moreUser":Ljava/lang/String;
    iget-object v7, p2, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiTestData;->userList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x3

    .line 308
    .local v2, "overCount":I
    if-lez v2, :cond_4b

    .line 309
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;->mContext:Landroid/content/Context;

    const-string v10, "omp_notificationItemAdapter_and_other"

    invoke-static {v9, v10}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;->mContext:Landroid/content/Context;

    const-string v10, "omp_notificationItemAdapter_people"

    invoke-static {v9, v10}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 310
    :cond_4b
    iget-object v7, p1, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$ViewHolder;->messageTextView:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p2, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiTestData;->message:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 311
    iget-object v7, p1, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$ViewHolder;->messageTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spannable;

    .line 312
    .local v3, "span":Landroid/text/Spannable;
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    iget-object v8, p0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v9, p0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;->mContext:Landroid/content/Context;

    const-string v10, "omp_omlet_blue"

    invoke-static {v9, v10}, Lmobisocial/util/ResUtil;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v8, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x11

    invoke-interface {v3, v7, v8, v9, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 313
    const/4 v0, 0x0

    :goto_99
    iget-object v7, p2, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiTestData;->userList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_a3

    .line 314
    if-le v0, v11, :cond_e7

    .line 320
    :cond_a3
    iget-object v7, p1, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$ViewHolder;->messageTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 321
    return-void

    .line 302
    .end local v1    # "moreUser":Ljava/lang/String;
    .end local v2    # "overCount":I
    .end local v3    # "span":Landroid/text/Spannable;
    :cond_ad
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v7, p2, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiTestData;->userList:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 303
    iget-object v7, p2, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiTestData;->userList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v0, v7, :cond_e3

    .line 304
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 299
    :cond_e3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    .line 316
    .restart local v1    # "moreUser":Ljava/lang/String;
    .restart local v2    # "overCount":I
    .restart local v3    # "span":Landroid/text/Spannable;
    :cond_e7
    iget-object v7, p2, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiTestData;->userList:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 317
    .local v6, "userString":Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 318
    .local v4, "startIndex":I
    new-instance v7, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$UserClickableSpan;

    invoke-direct {v7, p0, v6}, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$UserClickableSpan;-><init>(Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v4

    const/16 v9, 0x21

    invoke-interface {v3, v7, v4, v8, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 313
    add-int/lit8 v0, v0, 0x1

    goto :goto_99
.end method

.method private updateView(Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$ViewHolder;I)V
    .registers 9
    .param p1, "holder"    # Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v5, 0x0

    .line 259
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;->_NotiList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiTestData;

    .line 260
    .local v1, "noti":Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiTestData;
    iget-object v2, v1, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiTestData;->notiType:Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;

    sget-object v3, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;->System:Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;

    if-ne v2, v3, :cond_37

    .line 261
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;->mContext:Landroid/content/Context;

    const-string v4, "omp_ic_omplaysquare_nitification"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 262
    .local v0, "bm":Landroid/graphics/Bitmap;
    iget-object v2, p1, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$ViewHolder;->profileImageView:Landroid/widget/ImageView;

    new-instance v3, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper;

    invoke-direct {v3}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper;-><init>()V

    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper;->getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 263
    iget-object v2, p1, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$ViewHolder;->messageTextView:Landroid/widget/TextView;

    iget-object v3, v1, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiTestData;->message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    :goto_36
    return-void

    .line 265
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_37
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;->mContext:Landroid/content/Context;

    const-string v4, "omp_btn_loadingheadpic_onpost"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 266
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    iget-object v2, p1, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$ViewHolder;->profileImageView:Landroid/widget/ImageView;

    new-instance v3, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper;

    invoke-direct {v3}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper;-><init>()V

    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper;->getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 267
    iget-object v2, p1, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$ViewHolder;->profileImageView:Landroid/widget/ImageView;

    new-instance v3, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$1;

    invoke-direct {v3, p0, v1}, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$1;-><init>(Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiTestData;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    invoke-direct {p0, p1, v1}, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;->setMessageTextView(Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$ViewHolder;Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiTestData;)V

    .line 279
    iget-object v2, v1, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiTestData;->notiType:Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;

    sget-object v3, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;->Follow:Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;

    if-ne v2, v3, :cond_72

    .line 280
    iget-object v2, p1, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_36

    .line 282
    :cond_72
    iget-object v2, p1, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    new-instance v3, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$2;

    invoke-direct {v3, p0, v1}, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$2;-><init>(Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiTestData;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_36
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;->_NotiList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 182
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;->_NotiList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 187
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 209
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$ViewHolder;-><init>(Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;)V

    .line 210
    .local v0, "holder":Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$ViewHolder;
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;->_NotiList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiTestData;

    .line 211
    .local v1, "noti":Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiTestData;
    if-nez p2, :cond_a0

    .line 212
    sget-object v2, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$3;->$SwitchMap$mobisocial$omlet$overlaybar$ui$adapter$NotificationItemAdapter$NotiType:[I

    iget-object v3, v1, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiTestData;->notiType:Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;

    invoke-virtual {v3}, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_a8

    .line 218
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;->mContext:Landroid/content/Context;

    const-string v4, "omp_noti_media_item"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 219
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;->mContext:Landroid/content/Context;

    const-string v3, "image_view_thumbnail"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    .line 222
    :goto_3f
    iput p1, v0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$ViewHolder;->index:I

    move-object v2, p2

    .line 223
    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$ViewHolder;->convertView:Landroid/view/ViewGroup;

    .line 224
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;->mContext:Landroid/content/Context;

    const-string v3, "profile_icon"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$ViewHolder;->profileImageView:Landroid/widget/ImageView;

    .line 225
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;->mContext:Landroid/content/Context;

    const-string v3, "message"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$ViewHolder;->messageTextView:Landroid/widget/TextView;

    .line 226
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;->mContext:Landroid/content/Context;

    const-string v3, "time"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$ViewHolder;->timeTextView:Landroid/widget/TextView;

    .line 227
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 231
    :goto_79
    invoke-direct {p0, v0, p1}, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;->updateView(Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$ViewHolder;I)V

    .line 232
    return-object p2

    .line 214
    :pswitch_7d
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;->mContext:Landroid/content/Context;

    const-string v4, "omp_noti_system_item"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 215
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;->mContext:Landroid/content/Context;

    const-string v3, "text_mail_omlet"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$ViewHolder;->mailOmletTextView:Landroid/widget/TextView;

    goto :goto_3f

    .line 229
    :cond_a0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$ViewHolder;
    check-cast v0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$ViewHolder;

    .restart local v0    # "holder":Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$ViewHolder;
    goto :goto_79

    .line 212
    nop

    :pswitch_data_a8
    .packed-switch 0x1
        :pswitch_7d
    .end packed-switch
.end method
