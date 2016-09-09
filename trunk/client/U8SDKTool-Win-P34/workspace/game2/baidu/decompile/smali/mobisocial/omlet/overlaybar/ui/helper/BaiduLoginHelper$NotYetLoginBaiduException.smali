.class public Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$NotYetLoginBaiduException;
.super Ljava/lang/Exception;
.source "BaiduLoginHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotYetLoginBaiduException"
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;


# direct methods
.method public constructor <init>(Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;)V
    .registers 3
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;

    .prologue
    .line 219
    const-string v0, "Need to login Baidu first!"

    invoke-direct {p0, p1, v0}, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$NotYetLoginBaiduException;-><init>(Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public constructor <init>(Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;
    .param p2, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 222
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$NotYetLoginBaiduException;->this$0:Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;

    .line 223
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method public constructor <init>(Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;
    .param p2, "detailMessage"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 226
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$NotYetLoginBaiduException;->this$0:Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;

    .line 227
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 228
    return-void
.end method

.method public constructor <init>(Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 230
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$NotYetLoginBaiduException;->this$0:Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;

    .line 231
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 232
    return-void
.end method
