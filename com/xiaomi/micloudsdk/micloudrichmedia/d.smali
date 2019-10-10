.class public Lcom/xiaomi/micloudsdk/micloudrichmedia/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "MiCloudRichMediaManager"

.field private static final g:Ljava/lang/String; = "micfile"


# instance fields
.field private b:Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;

.field private c:Landroid/content/Context;

.field private d:Landroid/accounts/Account;

.field private e:Ljava/lang/String;

.field private f:Lcom/xiaomi/micloudsdk/b/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;)V
    .registers 5

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_29

    .line 60
    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 63
    iput-object p2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->d:Landroid/accounts/Account;

    .line 64
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->c:Landroid/content/Context;

    .line 65
    iget-object p1, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->e:Ljava/lang/String;

    .line 66
    new-instance p1, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->c:Landroid/content/Context;

    iget-object p2, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {p1, v0, p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->b:Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;

    return-void

    .line 61
    :cond_29
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The account should not be null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/micloudsdk/b/a;)V
    .registers 5

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/micloudsdk/b/a;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/micloudsdk/b/a;Ljava/lang/String;)V
    .registers 6

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->c:Landroid/content/Context;

    .line 49
    iput-object p3, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->f:Lcom/xiaomi/micloudsdk/b/a;

    .line 50
    new-instance p1, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->c:Landroid/content/Context;

    invoke-direct {p1, v0, p2, p4}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->b:Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;

    .line 51
    iget-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->b:Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;

    invoke-virtual {p1, p3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->a(Lcom/xiaomi/micloudsdk/b/a;)V

    .line 52
    iput-object p2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->e:Ljava/lang/String;

    return-void
.end method

.method private a()Lcom/xiaomi/micloudsdk/b/a;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->f:Lcom/xiaomi/micloudsdk/b/a;

    if-eqz v0, :cond_7

    .line 71
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->f:Lcom/xiaomi/micloudsdk/b/a;

    return-object v0

    .line 75
    :cond_7
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->d:Landroid/accounts/Account;

    const-string v3, "micfile"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 79
    :try_start_1a
    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    if-eqz v1, :cond_42

    .line 81
    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "authtoken"

    .line 82
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {v0}, Lcom/xiaomi/micloudsdk/b/a;->a(Ljava/lang/String;)Lcom/xiaomi/micloudsdk/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->f:Lcom/xiaomi/micloudsdk/b/a;

    .line 84
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->f:Lcom/xiaomi/micloudsdk/b/a;

    if-eqz v0, :cond_5f

    .line 85
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->b:Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->f:Lcom/xiaomi/micloudsdk/b/a;

    invoke-virtual {v0, v1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->a(Lcom/xiaomi/micloudsdk/b/a;)V

    .line 86
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->f:Lcom/xiaomi/micloudsdk/b/a;

    return-object v0

    :cond_42
    const-string v0, "getAuthToken: future getResult is null"

    .line 89
    invoke-static {v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->a(Ljava/lang/String;)V

    goto :goto_5f

    :catch_48
    move-exception v0

    goto :goto_54

    :catch_4a
    move-exception v0

    goto :goto_58

    :catch_4c
    move-exception v0

    goto :goto_5c

    :cond_4e
    const-string v0, "getAuthToken: future is null"

    .line 93
    invoke-static {v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->a(Ljava/lang/String;)V
    :try_end_53
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1a .. :try_end_53} :catch_4c
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1a .. :try_end_53} :catch_4a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_53} :catch_48

    goto :goto_5f

    .line 100
    :goto_54
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5f

    .line 98
    :goto_58
    invoke-virtual {v0}, Landroid/accounts/AuthenticatorException;->printStackTrace()V

    goto :goto_5f

    .line 96
    :goto_5c
    invoke-virtual {v0}, Landroid/accounts/OperationCanceledException;->printStackTrace()V

    .line 102
    :cond_5f
    :goto_5f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "failed to get auth token"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static final a(Ljava/lang/String;)V
    .registers 3

    const-string v0, "MiCloudRichMediaManager"

    const/4 v1, 0x3

    .line 296
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "MiCloudRichMediaManager"

    .line 297
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return-void
.end method

.method private b()V
    .registers 4

    const-string v0, "invalidateAuthToken:MiCloud rich media token expired."

    .line 286
    invoke-static {v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->a(Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->f:Lcom/xiaomi/micloudsdk/b/a;

    if-eqz v0, :cond_1c

    .line 289
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->d:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->f:Lcom/xiaomi/micloudsdk/b/a;

    .line 290
    invoke-virtual {v2}, Lcom/xiaomi/micloudsdk/b/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    const/4 v0, 0x0

    .line 292
    iput-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->f:Lcom/xiaomi/micloudsdk/b/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;,
            Lcom/xiaomi/micloudsdk/c/b;,
            Ljava/io/IOException;,
            Lcom/xiaomi/micloudsdk/c/c;
        }
    .end annotation

    .line 155
    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->a()Lcom/xiaomi/micloudsdk/b/a;

    .line 157
    :try_start_3
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->b:Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    move-result-object v0
    :try_end_b
    .catch Lcom/xiaomi/micloudsdk/c/g; {:try_start_3 .. :try_end_b} :catch_76
    .catch Lcom/xiaomi/micloudsdk/c/d; {:try_start_3 .. :try_end_b} :catch_22
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception p1

    .line 176
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "download:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->a(Ljava/lang/String;)V

    goto :goto_8b

    :catch_22
    move-exception v0

    .line 161
    iget v1, v0, Lcom/xiaomi/micloudsdk/c/d;->j:I

    const/16 v2, 0x191

    if-ne v1, v2, :cond_6e

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->d:Landroid/accounts/Account;

    if-eqz v1, :cond_6e

    .line 162
    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->b()V

    .line 164
    :try_start_30
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->b:Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    move-result-object p1
    :try_end_38
    .catch Lcom/xiaomi/micloudsdk/c/g; {:try_start_30 .. :try_end_38} :catch_58
    .catch Lorg/json/JSONException; {:try_start_30 .. :try_end_38} :catch_42
    .catch Lcom/xiaomi/micloudsdk/c/d; {:try_start_30 .. :try_end_38} :catch_39

    return-object p1

    :catch_39
    move-exception p1

    .line 170
    new-instance p2, Lcom/xiaomi/micloudsdk/c/c;

    iget p1, p1, Lcom/xiaomi/micloudsdk/c/d;->j:I

    invoke-direct {p2, p1}, Lcom/xiaomi/micloudsdk/c/c;-><init>(I)V

    throw p2

    :catch_42
    move-exception p1

    .line 168
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "download:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->a(Ljava/lang/String;)V

    goto :goto_8b

    :catch_58
    move-exception p1

    .line 166
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "download:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->a(Ljava/lang/String;)V

    goto :goto_8b

    .line 173
    :cond_6e
    new-instance p1, Lcom/xiaomi/micloudsdk/c/c;

    iget p2, v0, Lcom/xiaomi/micloudsdk/c/d;->j:I

    invoke-direct {p1, p2}, Lcom/xiaomi/micloudsdk/c/c;-><init>(I)V

    throw p1

    :catch_76
    move-exception p1

    .line 159
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "download:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->a(Ljava/lang/String;)V

    .line 178
    :goto_8b
    sget-object p1, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->b:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    return-object p1
.end method

.method public a(Lcom/xiaomi/micloudsdk/micloudrichmedia/j;)Lcom/xiaomi/micloudsdk/micloudrichmedia/m;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/micloudsdk/c/e;,
            Lcom/xiaomi/micloudsdk/c/b;,
            Landroid/accounts/NetworkErrorException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/micloudsdk/c/c;
        }
    .end annotation

    const/4 v0, 0x0

    .line 110
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->a(Lcom/xiaomi/micloudsdk/micloudrichmedia/j;Ljava/util/Collection;)Lcom/xiaomi/micloudsdk/micloudrichmedia/m;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/xiaomi/micloudsdk/micloudrichmedia/j;Ljava/util/Collection;)Lcom/xiaomi/micloudsdk/micloudrichmedia/m;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/micloudsdk/micloudrichmedia/j;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaomi/micloudsdk/micloudrichmedia/m;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/micloudsdk/c/e;,
            Lcom/xiaomi/micloudsdk/c/b;,
            Landroid/accounts/NetworkErrorException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/micloudsdk/c/c;
        }
    .end annotation

    .line 127
    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->a()Lcom/xiaomi/micloudsdk/b/a;

    .line 129
    :try_start_3
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->b:Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->a(Lcom/xiaomi/micloudsdk/micloudrichmedia/j;Ljava/util/Collection;)Lcom/xiaomi/micloudsdk/micloudrichmedia/m;

    move-result-object v0
    :try_end_9
    .catch Lcom/xiaomi/micloudsdk/c/g; {:try_start_3 .. :try_end_9} :catch_48
    .catch Lcom/xiaomi/micloudsdk/c/d; {:try_start_3 .. :try_end_9} :catch_a

    return-object v0

    :catch_a
    move-exception v0

    .line 133
    iget v1, v0, Lcom/xiaomi/micloudsdk/c/d;->j:I

    const/16 v2, 0x191

    if-ne v1, v2, :cond_3e

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->d:Landroid/accounts/Account;

    if-eqz v1, :cond_3e

    .line 134
    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->b()V

    .line 136
    :try_start_18
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->b:Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->a(Lcom/xiaomi/micloudsdk/micloudrichmedia/j;Ljava/util/Collection;)Lcom/xiaomi/micloudsdk/micloudrichmedia/m;

    move-result-object p1
    :try_end_1e
    .catch Lcom/xiaomi/micloudsdk/c/g; {:try_start_18 .. :try_end_1e} :catch_28
    .catch Lcom/xiaomi/micloudsdk/c/d; {:try_start_18 .. :try_end_1e} :catch_1f

    return-object p1

    :catch_1f
    move-exception p1

    .line 140
    new-instance p2, Lcom/xiaomi/micloudsdk/c/c;

    iget p1, p1, Lcom/xiaomi/micloudsdk/c/d;->j:I

    invoke-direct {p2, p1}, Lcom/xiaomi/micloudsdk/c/c;-><init>(I)V

    throw p2

    :catch_28
    move-exception p1

    .line 138
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "upload:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->a(Ljava/lang/String;)V

    goto :goto_5d

    .line 143
    :cond_3e
    new-instance p1, Lcom/xiaomi/micloudsdk/c/c;

    invoke-virtual {v0}, Lcom/xiaomi/micloudsdk/c/d;->a()I

    move-result p2

    invoke-direct {p1, p2}, Lcom/xiaomi/micloudsdk/c/c;-><init>(I)V

    throw p1

    :catch_48
    move-exception p1

    .line 131
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "upload:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->a(Ljava/lang/String;)V

    :goto_5d
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lcom/xiaomi/micloudsdk/b/a;)V
    .registers 3

    .line 282
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->b:Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;

    invoke-virtual {v0, p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->a(Lcom/xiaomi/micloudsdk/b/a;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/micloudsdk/c/c;
        }
    .end annotation

    .line 191
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 193
    :try_start_c
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->b:Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1
    :try_end_12
    .catch Lcom/xiaomi/micloudsdk/c/d; {:try_start_c .. :try_end_12} :catch_13

    return-object p1

    :catch_13
    move-exception p1

    .line 195
    new-instance p2, Lcom/xiaomi/micloudsdk/c/c;

    iget p1, p1, Lcom/xiaomi/micloudsdk/c/d;->j:I

    invoke-direct {p2, p1}, Lcom/xiaomi/micloudsdk/c/c;-><init>(I)V

    throw p2

    :cond_1c
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Lcom/xiaomi/micloudsdk/micloudrichmedia/j;)Lcom/xiaomi/micloudsdk/micloudrichmedia/m;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/micloudsdk/c/b;,
            Lcom/xiaomi/micloudsdk/c/c;
        }
    .end annotation

    const/4 v0, 0x0

    .line 239
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->b(Lcom/xiaomi/micloudsdk/micloudrichmedia/j;Ljava/util/Collection;)Lcom/xiaomi/micloudsdk/micloudrichmedia/m;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/xiaomi/micloudsdk/micloudrichmedia/j;Ljava/util/Collection;)Lcom/xiaomi/micloudsdk/micloudrichmedia/m;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/micloudsdk/micloudrichmedia/j;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaomi/micloudsdk/micloudrichmedia/m;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/micloudsdk/c/b;,
            Lcom/xiaomi/micloudsdk/c/c;
        }
    .end annotation

    .line 254
    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->a()Lcom/xiaomi/micloudsdk/b/a;

    const/4 v0, 0x0

    .line 256
    :try_start_4
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->b:Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;

    invoke-virtual {v1, p1, p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->b(Lcom/xiaomi/micloudsdk/micloudrichmedia/j;Ljava/util/Collection;)Lcom/xiaomi/micloudsdk/micloudrichmedia/m;

    move-result-object v1
    :try_end_a
    .catch Lcom/xiaomi/micloudsdk/c/g; {:try_start_4 .. :try_end_a} :catch_73
    .catch Lcom/xiaomi/micloudsdk/c/d; {:try_start_4 .. :try_end_a} :catch_21
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_a} :catch_b

    return-object v1

    :catch_b
    move-exception p1

    .line 276
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFileId:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->a(Ljava/lang/String;)V

    goto :goto_6a

    :catch_21
    move-exception v1

    .line 261
    iget v2, v1, Lcom/xiaomi/micloudsdk/c/d;->j:I

    const/16 v3, 0x191

    if-ne v2, v3, :cond_6b

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->d:Landroid/accounts/Account;

    if-eqz v2, :cond_6b

    .line 262
    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->b()V

    .line 264
    :try_start_2f
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->b:Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;

    invoke-virtual {v1, p1, p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->b(Lcom/xiaomi/micloudsdk/micloudrichmedia/j;Ljava/util/Collection;)Lcom/xiaomi/micloudsdk/micloudrichmedia/m;

    move-result-object p1
    :try_end_35
    .catch Lcom/xiaomi/micloudsdk/c/g; {:try_start_2f .. :try_end_35} :catch_55
    .catch Lorg/json/JSONException; {:try_start_2f .. :try_end_35} :catch_3f
    .catch Lcom/xiaomi/micloudsdk/c/d; {:try_start_2f .. :try_end_35} :catch_36

    return-object p1

    :catch_36
    move-exception p1

    .line 270
    new-instance p2, Lcom/xiaomi/micloudsdk/c/c;

    iget p1, p1, Lcom/xiaomi/micloudsdk/c/d;->j:I

    invoke-direct {p2, p1}, Lcom/xiaomi/micloudsdk/c/c;-><init>(I)V

    throw p2

    :catch_3f
    move-exception p1

    .line 268
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFileId:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->a(Ljava/lang/String;)V

    goto :goto_6a

    :catch_55
    move-exception p1

    .line 266
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFileId:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->a(Ljava/lang/String;)V

    :goto_6a
    return-object v0

    .line 273
    :cond_6b
    new-instance p1, Lcom/xiaomi/micloudsdk/c/c;

    iget p2, v1, Lcom/xiaomi/micloudsdk/c/d;->j:I

    invoke-direct {p1, p2}, Lcom/xiaomi/micloudsdk/c/c;-><init>(I)V

    throw p1

    :catch_73
    move-exception p1

    .line 258
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFileId:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->a(Ljava/lang/String;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;,
            Lcom/xiaomi/micloudsdk/c/b;,
            Ljava/io/IOException;,
            Lcom/xiaomi/micloudsdk/c/c;
        }
    .end annotation

    .line 208
    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->a()Lcom/xiaomi/micloudsdk/b/a;

    .line 210
    :try_start_3
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->b:Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0
    :try_end_b
    .catch Lcom/xiaomi/micloudsdk/c/g; {:try_start_3 .. :try_end_b} :catch_76
    .catch Lcom/xiaomi/micloudsdk/c/d; {:try_start_3 .. :try_end_b} :catch_22
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception p1

    .line 229
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "download:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->a(Ljava/lang/String;)V

    goto :goto_8b

    :catch_22
    move-exception v0

    .line 214
    iget v1, v0, Lcom/xiaomi/micloudsdk/c/d;->j:I

    const/16 v2, 0x191

    if-ne v1, v2, :cond_6e

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->d:Landroid/accounts/Account;

    if-eqz v1, :cond_6e

    .line 215
    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->b()V

    .line 217
    :try_start_30
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->b:Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1
    :try_end_38
    .catch Lcom/xiaomi/micloudsdk/c/g; {:try_start_30 .. :try_end_38} :catch_58
    .catch Lorg/json/JSONException; {:try_start_30 .. :try_end_38} :catch_42
    .catch Lcom/xiaomi/micloudsdk/c/d; {:try_start_30 .. :try_end_38} :catch_39

    return-object p1

    :catch_39
    move-exception p1

    .line 223
    new-instance p2, Lcom/xiaomi/micloudsdk/c/c;

    iget p1, p1, Lcom/xiaomi/micloudsdk/c/d;->j:I

    invoke-direct {p2, p1}, Lcom/xiaomi/micloudsdk/c/c;-><init>(I)V

    throw p2

    :catch_42
    move-exception p1

    .line 221
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "download:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->a(Ljava/lang/String;)V

    goto :goto_8b

    :catch_58
    move-exception p1

    .line 219
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "download:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->a(Ljava/lang/String;)V

    goto :goto_8b

    .line 226
    :cond_6e
    new-instance p1, Lcom/xiaomi/micloudsdk/c/c;

    iget p2, v0, Lcom/xiaomi/micloudsdk/c/d;->j:I

    invoke-direct {p1, p2}, Lcom/xiaomi/micloudsdk/c/c;-><init>(I)V

    throw p1

    :catch_76
    move-exception p1

    .line 212
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "download:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->a(Ljava/lang/String;)V

    :goto_8b
    const/4 p1, 0x0

    return-object p1
.end method
