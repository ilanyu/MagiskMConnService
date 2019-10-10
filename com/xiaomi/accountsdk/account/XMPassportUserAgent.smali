.class public Lcom/xiaomi/accountsdk/account/XMPassportUserAgent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/account/XMPassportUserAgent$UserAgentBuilder;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "XMPassportUserAgent"

.field private static final b:Ljava/lang/String; = "APP/"

.field private static final c:Ljava/lang/String; = "APPV/"

.field private static volatile d:Ljava/lang/String;

.field private static volatile e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile f:Ljava/lang/String;

.field private static volatile g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/account/XMPassportUserAgent;->e:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ljava/lang/String;
    .registers 9

    const-class v0, Lcom/xiaomi/accountsdk/account/XMPassportUserAgent;

    monitor-enter v0

    .line 54
    :try_start_3
    sget-object v1, Lcom/xiaomi/accountsdk/account/XMPassportUserAgent;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 56
    sget-object v1, Lcom/xiaomi/accountsdk/account/XMPassportUserAgent;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 57
    invoke-static {}, Lcom/xiaomi/accountsdk/account/XMPassportUserAgent;->c()Ljava/lang/String;

    move-result-object v1

    goto :goto_1a

    :cond_18
    sget-object v1, Lcom/xiaomi/accountsdk/account/XMPassportUserAgent;->d:Ljava/lang/String;

    :goto_1a
    move-object v4, v1

    .line 58
    new-instance v1, Lcom/xiaomi/accountsdk/account/XMPassportUserAgent$UserAgentBuilder;

    sget-object v5, Lcom/xiaomi/accountsdk/account/XMPassportUserAgent;->e:Ljava/util/Set;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/xiaomi/accountsdk/account/XMPassportUserAgent$UserAgentBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;ZLcom/xiaomi/accountsdk/account/XMPassportUserAgent$1;)V

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/account/XMPassportUserAgent$UserAgentBuilder;->a()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/accountsdk/account/XMPassportUserAgent;->f:Ljava/lang/String;

    .line 60
    :cond_2c
    sget-object p0, Lcom/xiaomi/accountsdk/account/XMPassportUserAgent;->f:Ljava/lang/String;
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_30

    monitor-exit v0

    return-object p0

    :catchall_30
    move-exception p0

    .line 53
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Landroid/webkit/WebView;Landroid/content/Context;)Ljava/lang/String;
    .registers 9

    const-class v0, Lcom/xiaomi/accountsdk/account/XMPassportUserAgent;

    monitor-enter v0

    .line 65
    :try_start_3
    invoke-static {}, Lcom/xiaomi/accountsdk/account/XMPassportUserAgent;->a()V

    .line 66
    sget-object v1, Lcom/xiaomi/accountsdk/account/XMPassportUserAgent;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 68
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p0

    invoke-virtual {p0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v3

    .line 69
    new-instance p0, Lcom/xiaomi/accountsdk/account/XMPassportUserAgent$UserAgentBuilder;

    sget-object v4, Lcom/xiaomi/accountsdk/account/XMPassportUserAgent;->e:Ljava/util/Set;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/accountsdk/account/XMPassportUserAgent$UserAgentBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;ZLcom/xiaomi/accountsdk/account/XMPassportUserAgent$1;)V

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/XMPassportUserAgent$UserAgentBuilder;->a()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/accountsdk/account/XMPassportUserAgent;->g:Ljava/lang/String;

    .line 71
    :cond_27
    sget-object p0, Lcom/xiaomi/accountsdk/account/XMPassportUserAgent;->g:Ljava/lang/String;
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_2b

    monitor-exit v0

    return-object p0

    :catchall_2b
    move-exception p0

    .line 64
    monitor-exit v0

    throw p0
.end method

.method private static a()V
    .registers 2

    .line 75
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_b

    return-void

    .line 76
    :cond_b
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "cannot be called without main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;)V
    .registers 3

    const-class v0, Lcom/xiaomi/accountsdk/account/XMPassportUserAgent;

    monitor-enter v0

    .line 38
    :try_start_3
    sget-object v1, Lcom/xiaomi/accountsdk/account/XMPassportUserAgent;->e:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-static {}, Lcom/xiaomi/accountsdk/account/XMPassportUserAgent;->b()V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    .line 40
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    .line 37
    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized b()V
    .registers 2

    const-class v0, Lcom/xiaomi/accountsdk/account/XMPassportUserAgent;

    monitor-enter v0

    const/4 v1, 0x0

    .line 84
    :try_start_4
    sput-object v1, Lcom/xiaomi/accountsdk/account/XMPassportUserAgent;->f:Ljava/lang/String;

    .line 85
    sput-object v1, Lcom/xiaomi/accountsdk/account/XMPassportUserAgent;->g:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_a

    .line 86
    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    .line 83
    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized b(Ljava/lang/String;)V
    .registers 2

    const-class v0, Lcom/xiaomi/accountsdk/account/XMPassportUserAgent;

    monitor-enter v0

    .line 48
    :try_start_3
    sput-object p0, Lcom/xiaomi/accountsdk/account/XMPassportUserAgent;->d:Ljava/lang/String;

    .line 49
    invoke-static {}, Lcom/xiaomi/accountsdk/account/XMPassportUserAgent;->b()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 50
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    .line 47
    monitor-exit v0

    throw p0
.end method

.method private static c()Ljava/lang/String;
    .registers 1

    const-string v0, "http.agent"

    .line 164
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
