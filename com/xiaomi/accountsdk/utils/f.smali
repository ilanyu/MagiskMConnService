.class public Lcom/xiaomi/accountsdk/utils/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/xiaomi/accountsdk/utils/f;

.field private static final b:Ljava/lang/String; = "UUID"

.field private static final c:Ljava/lang/String; = "UUID_"

.field private static final d:Ljava/lang/String; = "PassportNotificationGuardian"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    new-instance v0, Lcom/xiaomi/accountsdk/utils/f;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/f;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/utils/f;->a:Lcom/xiaomi/accountsdk/utils/f;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 4

    const-string v0, "PassportNotificationGuardian"

    const/4 v1, 0x0

    .line 51
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1
.end method

.method public static a()Lcom/xiaomi/accountsdk/utils/f;
    .registers 1

    .line 13
    sget-object v0, Lcom/xiaomi/accountsdk/utils/f;->a:Lcom/xiaomi/accountsdk/utils/f;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UUID_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    if-eqz p1, :cond_27

    if-nez p2, :cond_5

    goto :goto_27

    .line 27
    :cond_5
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UUID"

    .line 28
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/utils/f;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/xiaomi/accountsdk/utils/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_27
    :goto_27
    return-void
.end method

.method public b(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2f

    if-nez p2, :cond_6

    goto :goto_2f

    :cond_6
    const-string v1, "UUID"

    .line 36
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 37
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    return v0

    .line 40
    :cond_13
    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/utils/f;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 41
    invoke-direct {p0, p2}, Lcom/xiaomi/accountsdk/utils/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 42
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 43
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 p1, 0x1

    return p1

    :cond_2e
    return v0

    :cond_2f
    :goto_2f
    return v0
.end method
