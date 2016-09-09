.class public Lcom/baidu/sapi2/result/FaceCheckResult;
.super Lcom/baidu/sapi2/result/SapiResult;
.source "FaceCheckResult.java"


# static fields
.field public static final RESULT_CODE_ACCOUNT_TYPE_CONFLICT:I = 0x3

.field public static final RESULT_CODE_BDUSS_EXPIRED:I = 0x1

.field public static final RESULT_MSG_ACCOUNT_TYPE_CONFLICT:Ljava/lang/String; = "\u8bf7\u9009\u62e9\u5e10\u53f7\u7c7b\u578b"

.field public static final RESULT_MSG_BDUSS_EXPIRED:Ljava/lang/String; = "\u7528\u6237\u767b\u5f55\u72b6\u6001\u5931\u6548\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"


# instance fields
.field public authId:Ljava/lang/String;

.field public authToken:Ljava/lang/String;

.field public faceId:Ljava/lang/String;

.field public hasFace:Z

.field public isTrusted:Z

.field public uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/baidu/sapi2/result/SapiResult;-><init>()V

    .line 51
    iget-object v0, p0, Lcom/baidu/sapi2/result/FaceCheckResult;->msgMap:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "\u7528\u6237\u767b\u5f55\u72b6\u6001\u5931\u6548\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lcom/baidu/sapi2/result/FaceCheckResult;->msgMap:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const-string v2, "\u8bf7\u9009\u62e9\u5e10\u53f7\u7c7b\u578b"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 53
    return-void
.end method
