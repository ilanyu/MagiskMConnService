.class public Lcom/xiaomi/micloudsdk/request/utils/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;


# static fields
.field private static final a:Ljava/lang/String; = "DefaultRequestEnv"

.field private static final b:Ljava/lang/String; = "micloud"

.field private static final c:[I

.field private static final d:I = 0x3


# instance fields
.field private e:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/xiaomi/micloudsdk/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x2

    .line 25
    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/xiaomi/micloudsdk/request/utils/d;->c:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x1388
        0x2710
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/micloudsdk/request/utils/d;->e:Ljava/lang/ThreadLocal;

    return-void
.end method


# virtual methods
.method public a()Lcom/xiaomi/micloudsdk/b/a;
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ge v0, v2, :cond_7c

    .line 40
    :try_start_6
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->c()Landroid/accounts/Account;

    move-result-object v5

    if-nez v5, :cond_14

    const-string v2, "DefaultRequestEnv"

    const-string v4, "no account in system"

    .line 42
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 46
    :cond_14
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    const-string v6, "micloud"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 47
    invoke-virtual/range {v4 .. v9}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v2

    .line 48
    invoke-interface {v2}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    const-string v4, "authtoken"

    .line 49
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_34

    return-object v3

    .line 53
    :cond_34
    iget-object v4, p0, Lcom/xiaomi/micloudsdk/request/utils/d;->e:Ljava/lang/ThreadLocal;

    invoke-static {v2}, Lcom/xiaomi/micloudsdk/b/a;->a(Ljava/lang/String;)Lcom/xiaomi/micloudsdk/b/a;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 54
    iget-object v2, p0, Lcom/xiaomi/micloudsdk/request/utils/d;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/micloudsdk/b/a;
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_45} :catch_5e
    .catch Landroid/accounts/OperationCanceledException; {:try_start_6 .. :try_end_45} :catch_55
    .catch Landroid/accounts/AuthenticatorException; {:try_start_6 .. :try_end_45} :catch_46

    return-object v2

    :catch_46
    move-exception v2

    const-string v4, "DefaultRequestEnv"

    const-string v5, "AuthenticatorException when getting service token"

    .line 69
    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-nez v1, :cond_7c

    .line 72
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/request/utils/d;->b()V

    const/4 v1, 0x1

    goto :goto_79

    :catch_55
    move-exception v0

    const-string v1, "DefaultRequestEnv"

    const-string v2, "OperationCanceledException when getting service token"

    .line 66
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v3

    :catch_5e
    move-exception v2

    const-string v3, "DefaultRequestEnv"

    const-string v4, "IOException when getting service token"

    .line 57
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x2

    if-ge v0, v3, :cond_79

    .line 60
    :try_start_69
    sget-object v3, Lcom/xiaomi/micloudsdk/request/utils/d;->c:[I

    aget v3, v3, v0

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_71
    .catch Ljava/lang/InterruptedException; {:try_start_69 .. :try_end_71} :catch_72

    goto :goto_79

    :catch_72
    const-string v3, "DefaultRequestEnv"

    const-string v4, "InterruptedException when sleep"

    .line 62
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_79
    :goto_79
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7c
    return-object v3
.end method

.method public b()V
    .registers 4

    .line 83
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/request/utils/d;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2e

    const-string v0, "DefaultRequestEnv"

    const-string v1, "invalidateAuthToken"

    .line 84
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.xiaomi"

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/request/utils/d;->e:Ljava/lang/ThreadLocal;

    .line 87
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/micloudsdk/b/a;

    invoke-virtual {v2}, Lcom/xiaomi/micloudsdk/b/a;->a()Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/request/utils/d;->e:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_2e
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 3

    .line 94
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->c()Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_f

    const-string v0, "DefaultRequestEnv"

    const-string v1, "no account in system"

    .line 96
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 99
    :cond_f
    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 4

    .line 105
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->c()Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_f

    const-string v0, "DefaultRequestEnv"

    const-string v1, "no account in system"

    .line 107
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 110
    :cond_f
    new-instance v1, Lcom/xiaomi/micloudsdk/request/utils/DefaultRequestEnv$1;

    .line 111
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/xiaomi/micloudsdk/request/utils/DefaultRequestEnv$1;-><init>(Lcom/xiaomi/micloudsdk/request/utils/d;Landroid/content/Context;Landroid/accounts/Account;)V

    .line 117
    invoke-virtual {v1}, Lcom/xiaomi/micloudsdk/remote/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized e()Ljava/lang/String;
    .registers 4

    monitor-enter p0

    .line 123
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/request/utils/d;->f:Ljava/lang/String;

    if-nez v0, :cond_64

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; MIUI/"

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_68

    :try_start_19
    const-string v1, "miui.os.Build"

    .line 129
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "IS_ALPHA_BUILD"

    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5e

    const/16 v1, 0x20

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "ALPHA"

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_19 .. :try_end_3e} :catch_57
    .catch Ljava/lang/NoSuchFieldException; {:try_start_19 .. :try_end_3e} :catch_4f
    .catch Ljava/lang/IllegalAccessException; {:try_start_19 .. :try_end_3e} :catch_47
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_3e} :catch_3f
    .catchall {:try_start_19 .. :try_end_3e} :catchall_68

    goto :goto_5e

    :catch_3f
    :try_start_3f
    const-string v1, "DefaultRequestEnv"

    const-string v2, "Not in MIUI in getUserAgent"

    .line 143
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e

    :catch_47
    const-string v1, "DefaultRequestEnv"

    const-string v2, "Not in MIUI in getUserAgent"

    .line 141
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e

    :catch_4f
    const-string v1, "DefaultRequestEnv"

    const-string v2, "Not in MIUI in getUserAgent"

    .line 139
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e

    :catch_57
    const-string v1, "DefaultRequestEnv"

    const-string v2, "Not in MIUI in getUserAgent"

    .line 137
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_5e
    :goto_5e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/micloudsdk/request/utils/d;->f:Ljava/lang/String;

    .line 147
    :cond_64
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/request/utils/d;->f:Ljava/lang/String;
    :try_end_66
    .catchall {:try_start_3f .. :try_end_66} :catchall_68

    monitor-exit p0

    return-object v0

    :catchall_68
    move-exception v0

    .line 122
    monitor-exit p0

    throw v0
.end method

.method public f()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public g()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public h()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method
