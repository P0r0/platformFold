.class public Lmobisocial/longdan/ClusterIdentities;
.super Ljava/lang/Object;
.source "ClusterIdentities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/longdan/ClusterIdentities$KeyType;
    }
.end annotation


# static fields
.field public static final CLUSTER_CHINA:Ljava/lang/String; = "THREE"

.field private static final TAG:Ljava/lang/String; = "ClusterIdentities"

.field private static sConfiguration:Lmobisocial/longdan/ClusterIdentities;


# instance fields
.field public clusterEndpoints:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ClusterEndpoints"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public clusterKeys:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ClusterKeys"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field public defaultCluster:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DefaultCluster"
    .end annotation
.end field

.field public idpEndpoints:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IdpEndpoints"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public idpKey:[B
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IdpKey"
    .end annotation
.end field

.field public readOnlyEndpoints:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ReadOnlyEndpoints"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public readOnlyKey:[B
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ReadOnlyKey"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static declared-synchronized getConfiguration(Landroid/content/Context;)Lmobisocial/longdan/ClusterIdentities;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    const-class v8, Lmobisocial/longdan/ClusterIdentities;

    monitor-enter v8

    :try_start_3
    sget-object v7, Lmobisocial/longdan/ClusterIdentities;->sConfiguration:Lmobisocial/longdan/ClusterIdentities;

    if-eqz v7, :cond_b

    .line 60
    sget-object v7, Lmobisocial/longdan/ClusterIdentities;->sConfiguration:Lmobisocial/longdan/ClusterIdentities;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_55

    .line 83
    :goto_9
    monitor-exit v8

    return-object v7

    .line 62
    :cond_b
    :try_start_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_55

    .line 64
    .local v4, "serverText":Ljava/lang/StringBuilder;
    :try_start_10
    invoke-static {p0}, Lmobisocial/omlib/service/util/ConfigHelper;->getProvider(Landroid/content/Context;)Lmobisocial/omlib/service/util/ConfigHelper$ConfigProvider;

    move-result-object v3

    .line 65
    .local v3, "provider":Lmobisocial/omlib/service/util/ConfigHelper$ConfigProvider;
    const-string v7, "omlet.server"

    invoke-interface {v3, v7}, Lmobisocial/omlib/service/util/ConfigHelper$ConfigProvider;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 66
    .local v5, "serverToUse":Ljava/lang/String;
    if-eqz v5, :cond_28

    sget-object v7, Lmobisocial/longdan/ClusterIdentities$KeyType;->Prod:Lmobisocial/longdan/ClusterIdentities$KeyType;

    invoke-virtual {v7}, Lmobisocial/longdan/ClusterIdentities$KeyType;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_58

    .line 67
    :cond_28
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v9, "oml_pk"

    invoke-static {p0, v9}, Lmobisocial/util/ResUtil;->getRaw(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 76
    .local v1, "file":Ljava/io/InputStream;
    :goto_36
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    const-string v9, "UTF-8"

    invoke-direct {v7, v1, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 78
    .local v6, "streamReader":Ljava/io/BufferedReader;
    :goto_42
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_97

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_4b} :catch_4c
    .catchall {:try_start_10 .. :try_end_4b} :catchall_55

    goto :goto_42

    .line 79
    .end local v1    # "file":Ljava/io/InputStream;
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "provider":Lmobisocial/omlib/service/util/ConfigHelper$ConfigProvider;
    .end local v5    # "serverToUse":Ljava/lang/String;
    .end local v6    # "streamReader":Ljava/io/BufferedReader;
    :catch_4c
    move-exception v0

    .line 80
    .local v0, "e":Ljava/io/IOException;
    :try_start_4d
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v9, "Project can not run without valid server keys file"

    invoke-direct {v7, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_55
    .catchall {:try_start_4d .. :try_end_55} :catchall_55

    .line 59
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "serverText":Ljava/lang/StringBuilder;
    :catchall_55
    move-exception v7

    monitor-exit v8

    throw v7

    .line 68
    .restart local v3    # "provider":Lmobisocial/omlib/service/util/ConfigHelper$ConfigProvider;
    .restart local v4    # "serverText":Ljava/lang/StringBuilder;
    .restart local v5    # "serverToUse":Ljava/lang/String;
    :cond_58
    :try_start_58
    sget-object v7, Lmobisocial/longdan/ClusterIdentities$KeyType;->Dev:Lmobisocial/longdan/ClusterIdentities$KeyType;

    invoke-virtual {v7}, Lmobisocial/longdan/ClusterIdentities$KeyType;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_73

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v9, "oml_devpk"

    invoke-static {p0, v9}, Lmobisocial/util/ResUtil;->getRaw(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .restart local v1    # "file":Ljava/io/InputStream;
    goto :goto_36

    .line 70
    .end local v1    # "file":Ljava/io/InputStream;
    :cond_73
    sget-object v7, Lmobisocial/longdan/ClusterIdentities$KeyType;->Test:Lmobisocial/longdan/ClusterIdentities$KeyType;

    invoke-virtual {v7}, Lmobisocial/longdan/ClusterIdentities$KeyType;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8e

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v9, "oml_testpk"

    invoke-static {p0, v9}, Lmobisocial/util/ResUtil;->getRaw(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .restart local v1    # "file":Ljava/io/InputStream;
    goto :goto_36

    .line 73
    .end local v1    # "file":Ljava/io/InputStream;
    :cond_8e
    const-string v7, "ClusterIdentities"

    const-string v9, "Unknown server config flag - defaulting to prod"

    invoke-static {v7, v9}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_95} :catch_4c
    .catchall {:try_start_58 .. :try_end_95} :catchall_55

    .line 74
    const/4 v1, 0x0

    .restart local v1    # "file":Ljava/io/InputStream;
    goto :goto_36

    .line 82
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v6    # "streamReader":Ljava/io/BufferedReader;
    :cond_97
    :try_start_97
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-class v9, Lmobisocial/longdan/ClusterIdentities;

    invoke-static {v7, v9}, Lmobisocial/serialization/SerializationUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmobisocial/longdan/ClusterIdentities;

    sput-object v7, Lmobisocial/longdan/ClusterIdentities;->sConfiguration:Lmobisocial/longdan/ClusterIdentities;

    .line 83
    sget-object v7, Lmobisocial/longdan/ClusterIdentities;->sConfiguration:Lmobisocial/longdan/ClusterIdentities;
    :try_end_a7
    .catchall {:try_start_97 .. :try_end_a7} :catchall_55

    goto/16 :goto_9
.end method
