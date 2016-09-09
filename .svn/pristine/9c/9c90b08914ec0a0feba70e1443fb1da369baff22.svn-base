.class public Lcom/baidu/sapi2/result/ReloginResult;
.super Lcom/baidu/sapi2/result/SapiResult;
.source "ReloginResult.java"


# static fields
.field public static final ERROR_CODE_EMPTY_BDUSS:I = -0x65

.field public static final ERROR_CODE_EMPTY_PASSWORD:I = -0x66

.field public static final ERROR_MSG_EMPTY_BDUSS:Ljava/lang/String; = "BDUSS\u4e0d\u80fd\u4e3a\u7a7a"

.field public static final ERROR_MSG_EMPTY_PASSWORD:Ljava/lang/String; = "\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"


# instance fields
.field public session:Lcom/baidu/sapi2/SapiAccount;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/baidu/sapi2/result/SapiResult;-><init>()V

    .line 25
    iget-object v0, p0, Lcom/baidu/sapi2/result/ReloginResult;->msgMap:Landroid/util/SparseArray;

    const/16 v1, -0x65

    const-string v2, "BDUSS\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26
    iget-object v0, p0, Lcom/baidu/sapi2/result/ReloginResult;->msgMap:Landroid/util/SparseArray;

    const/16 v1, -0x66

    const-string v2, "\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 27
    return-void
.end method
