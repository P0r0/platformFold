.class public interface abstract Lmobisocial/omlib/client/interfaces/DurableJobHandler;
.super Ljava/lang/Object;
.source "DurableJobHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final GLOBAL_SLICE:J = 0x492559f64fL

.field public static final TAG:Ljava/lang/String; = "Omlib-job"


# virtual methods
.method public abstract getJobType()Ljava/lang/String;
.end method

.method public abstract getSlice()J
.end method

.method public abstract onReconstitutedRequest()Z
.end method

.method public abstract perform(Lmobisocial/omlib/client/LongdanClient;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmobisocial/omlib/client/LongdanClient;",
            ")TTResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/longdan/exception/LongdanException;
        }
    .end annotation
.end method

.method public abstract requestAboutToBeScheduled(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
.end method

.method public abstract requestComplete(Lmobisocial/omlib/client/LongdanClient;Ljava/lang/Object;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmobisocial/omlib/client/LongdanClient;",
            "TTResult;",
            "Lmobisocial/omlib/db/OMSQLiteHelper;",
            "Lmobisocial/omlib/db/PostCommit;",
            ")V"
        }
    .end annotation
.end method
