.class public Lcom/baidu/sapi2/result/FaceLoginResult;
.super Lcom/baidu/sapi2/result/SapiResult;
.source "FaceLoginResult.java"


# static fields
.field public static final RESULT_CODE_PWD_VERIFY_FAILURE:I = 0x4

.field public static final RESULT_MSG_PWD_VERIFY_FAILURE:Ljava/lang/String; = "\u5bc6\u7801\u9a8c\u8bc1\u9519\u8bef"


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/baidu/sapi2/result/SapiResult;-><init>()V

    .line 17
    iget-object v0, p0, Lcom/baidu/sapi2/result/FaceLoginResult;->msgMap:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string v2, "\u5bc6\u7801\u9a8c\u8bc1\u9519\u8bef"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    return-void
.end method
