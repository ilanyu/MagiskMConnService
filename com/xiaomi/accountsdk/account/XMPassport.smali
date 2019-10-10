.class public Lcom/xiaomi/accountsdk/account/XMPassport;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;
    }
.end annotation


# static fields
.field private static final A:I = 0x2720

.field private static final B:I = 0x2721

.field private static final C:I = 0x1117d

.field private static final D:I = 0x11185

.field private static final E:I = 0x11176

.field private static final F:I = 0x61b1

.field private static final G:I = 0x1117c

.field private static final H:I = 0x1117e

.field private static final I:I = 0x11186

.field private static final J:J = 0x68ec989L

.field private static final K:J = 0x68f8cd9L

.field private static final L:I = 0x2721

.field private static final M:I = 0x11171

.field private static final N:I = 0x272f

.field private static final O:I = 0x61ac

.field private static final P:I = 0x61ad

.field private static final Q:Ljava/lang/String; = "XMPassport"

.field private static final R:Ljava/lang/Integer;

.field public static final a:Z

.field public static final b:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final c:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final d:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final e:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final f:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final g:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final h:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final i:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final j:Ljava/lang/String; = "&&&START&&&"

.field public static final k:Ljava/lang/String; = "yyyy-MM-dd"

.field static l:Z = false

.field private static final m:Ljava/lang/String; = "_320"

.field private static final n:Ljava/lang/String; = "1"

.field private static final o:Ljava/lang/String; = "-1"

.field private static final p:Ljava/lang/Integer;

.field private static final q:I = 0x1

.field private static final r:I = 0x2

.field private static final s:I = 0x9

.field private static final t:Ljava/lang/String; = "extra_scope"

.field private static final u:Ljava/lang/String; = "passport"

.field private static final v:I = 0x0

.field private static final w:I = 0x4e23

.field private static final x:I = 0x13c6b

.field private static final y:I = 0x61a9

.field private static final z:I = 0x4e37


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 103
    sget-boolean v0, Lcom/xiaomi/accountsdk/account/g;->a:Z

    sput-boolean v0, Lcom/xiaomi/accountsdk/account/XMPassport;->a:Z

    .line 106
    sget-object v0, Lcom/xiaomi/accountsdk/account/g;->b:Ljava/lang/String;

    sput-object v0, Lcom/xiaomi/accountsdk/account/XMPassport;->b:Ljava/lang/String;

    .line 109
    sget-object v0, Lcom/xiaomi/accountsdk/account/g;->e:Ljava/lang/String;

    sput-object v0, Lcom/xiaomi/accountsdk/account/XMPassport;->c:Ljava/lang/String;

    .line 112
    sget-object v0, Lcom/xiaomi/accountsdk/account/g;->g:Ljava/lang/String;

    sput-object v0, Lcom/xiaomi/accountsdk/account/XMPassport;->d:Ljava/lang/String;

    .line 115
    sget-object v0, Lcom/xiaomi/accountsdk/account/g;->h:Ljava/lang/String;

    sput-object v0, Lcom/xiaomi/accountsdk/account/XMPassport;->e:Ljava/lang/String;

    .line 118
    sget-object v0, Lcom/xiaomi/accountsdk/account/g;->i:Ljava/lang/String;

    sput-object v0, Lcom/xiaomi/accountsdk/account/XMPassport;->f:Ljava/lang/String;

    .line 121
    sget-object v0, Lcom/xiaomi/accountsdk/account/g;->j:Ljava/lang/String;

    sput-object v0, Lcom/xiaomi/accountsdk/account/XMPassport;->g:Ljava/lang/String;

    .line 124
    sget-object v0, Lcom/xiaomi/accountsdk/account/g;->k:Ljava/lang/String;

    sput-object v0, Lcom/xiaomi/accountsdk/account/XMPassport;->h:Ljava/lang/String;

    .line 127
    sget-object v0, Lcom/xiaomi/accountsdk/account/g;->l:Ljava/lang/String;

    sput-object v0, Lcom/xiaomi/accountsdk/account/XMPassport;->i:Ljava/lang/String;

    const/4 v0, 0x0

    .line 135
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/accountsdk/account/XMPassport;->p:Ljava/lang/Integer;

    .line 175
    sput-boolean v0, Lcom/xiaomi/accountsdk/account/XMPassport;->l:Z

    const v0, 0x493e0

    .line 3265
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/accountsdk/account/XMPassport;->R:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/util/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/accountsdk/account/XMPassport;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 613
    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->b(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/xiaomi/accountsdk/account/data/AccountInfo;Ljava/lang/Long;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/c;
        }
    .end annotation

    .line 890
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->b:Ljava/lang/String;

    const-string v1, "XMPassport"

    .line 891
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start sts request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/accountsdk/utils/d;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->f:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_ee

    .line 898
    new-instance v2, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v2}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v3, "clientSign"

    .line 899
    invoke-virtual {v2, v3, p1}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p1

    const-string v2, "_userIdNeedEncrypt"

    const-string v3, "true"

    .line 900
    invoke-virtual {p1, v2, v3}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p1

    .line 903
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->h()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p1, v3, v1}, Lcom/xiaomi/accountsdk/request/s;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p1

    if-eqz p1, :cond_e6

    const-string v2, "%s_serviceToken"

    const/4 v3, 0x1

    .line 908
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    .line 909
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 910
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_78

    const-string v2, "serviceToken"

    .line 911
    invoke-virtual {p1, v2}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 912
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_61

    goto :goto_78

    .line 913
    :cond_61
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no service token contained in callback cookies: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/xiaomi/accountsdk/request/k;-><init>(ILjava/lang/String;)V

    throw p0

    .line 918
    :cond_78
    :goto_78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_slh"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 919
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_ph"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 920
    new-instance v3, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    invoke-direct {v3}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;-><init>()V

    iget-object v4, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->a:Ljava/lang/String;

    .line 921
    invoke-virtual {v3, v4}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object v3

    .line 922
    invoke-virtual {v3, v0}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->c:Ljava/lang/String;

    .line 923
    invoke-virtual {v0, v3}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->c(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->d:Ljava/lang/String;

    .line 924
    invoke-virtual {v0, v3}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->d(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object v0

    .line 925
    invoke-virtual {v0, v2}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->e(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->f:Ljava/lang/String;

    .line 926
    invoke-virtual {v0, v2}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->f(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->g:Ljava/lang/String;

    .line 927
    invoke-virtual {v0, v2}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->g(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object v0

    .line 928
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->j(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object v0

    .line 929
    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->k(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->i:Ljava/lang/String;

    .line 930
    invoke-virtual {p1, v0}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->i(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object p1

    iget-boolean p0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->m:Z

    .line 931
    invoke-virtual {p1, p0}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->a(Z)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object p0

    .line 932
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->a()Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object p0

    return-object p0

    .line 905
    :cond_e6
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    const-string p1, "no response when get service token"

    invoke-direct {p0, v1, p1}, Lcom/xiaomi/accountsdk/request/k;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_ee
    const-string p0, "XMPassport"

    const-string p1, "failed to get client sign"

    .line 894
    invoke-static {p0, p1}, Lcom/xiaomi/accountsdk/utils/d;->j(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    const-string p1, "sign parameters failure"

    invoke-direct {p0, v1, p1}, Lcom/xiaomi/accountsdk/request/k;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/account/a/g;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/account/a/l;,
            Lcom/xiaomi/accountsdk/account/a/o;
        }
    .end annotation

    if-eqz p0, :cond_a7

    .line 446
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams;->d:Ljava/lang/String;

    .line 447
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 448
    sget-object v0, Lcom/xiaomi/accountsdk/account/g;->M:Ljava/lang/String;

    .line 451
    :cond_c
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams;->c:Ljava/lang/String;

    .line 452
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v1, "passport"

    :cond_16
    move-object v4, v1

    .line 456
    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams;->a:Ljava/lang/String;

    .line 457
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams;->b:Ljava/lang/String;

    .line 458
    iget-object v3, p0, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams;->e:Ljava/lang/String;

    .line 459
    iget-boolean v7, p0, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams;->f:Z

    .line 460
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "sid"

    invoke-virtual {v5, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 461
    new-instance v6, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v6}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    .line 462
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_39

    const-string v5, "sid"

    .line 463
    invoke-virtual {v6, v5, v4}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    :cond_39
    const-string v5, "_json"

    const-string v8, "true"

    .line 465
    invoke-virtual {v6, v5, v8}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    .line 467
    iget-boolean p0, p0, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams;->g:Z

    if-eqz p0, :cond_4b

    const-string p0, "_loginSign"

    const-string v5, "ticket"

    .line 468
    invoke-virtual {v6, p0, v5}, Lcom/xiaomi/accountsdk/utils/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    :cond_4b
    new-instance p0, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v5, "userId"

    .line 471
    invoke-virtual {p0, v5, v2}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p0

    const-string v5, "passToken"

    .line 472
    invoke-virtual {p0, v5, v1}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p0

    .line 474
    invoke-static {p0, v3}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/utils/k;Ljava/lang/String;)V

    .line 475
    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Ljava/util/Map;)V

    .line 477
    new-instance v1, Lcom/xiaomi/accountsdk/request/o;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/request/o;-><init>()V

    .line 478
    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/request/o;->a(Ljava/lang/String;)V

    .line 479
    invoke-virtual {v1, p0}, Lcom/xiaomi/accountsdk/request/o;->d(Ljava/util/Map;)V

    .line 480
    invoke-virtual {v1, v6}, Lcom/xiaomi/accountsdk/request/o;->a(Ljava/util/Map;)V

    const/4 p0, 0x1

    .line 481
    invoke-virtual {v1, p0}, Lcom/xiaomi/accountsdk/request/o;->a(Z)V

    .line 483
    new-instance p0, Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassToken;

    invoke-direct {p0, v1}, Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassToken;-><init>(Lcom/xiaomi/accountsdk/request/o;)V

    .line 487
    :try_start_79
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/PassportLoginRequest;->e()Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object v3

    if-eqz v3, :cond_89

    const/4 v5, 0x1

    .line 493
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/PassportLoginRequest;->c()Z

    move-result v6

    .line 491
    invoke-static/range {v2 .. v7}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Ljava/lang/String;Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;Ljava/lang/String;ZZZ)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object p0

    return-object p0

    .line 489
    :cond_89
    new-instance p0, Ljava/io/IOException;

    const-string v0, "failed to get response from service server"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_91
    .catch Lcom/xiaomi/accountsdk/account/a/q; {:try_start_79 .. :try_end_91} :catch_9f
    .catch Lcom/xiaomi/accountsdk/account/a/n; {:try_start_79 .. :try_end_91} :catch_97
    .catch Lcom/xiaomi/a/b/a; {:try_start_79 .. :try_end_91} :catch_91

    .line 500
    :catch_91
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 498
    :catch_97
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    const-string v0, "Unexpected NeedCaptchaException"

    invoke-direct {p0, v0}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0

    .line 496
    :catch_9f
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    const-string v0, "Unexpected NeedVerificationException"

    invoke-direct {p0, v0}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0

    .line 443
    :cond_a7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "passToken login params can not be empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/account/a/g;,
            Lcom/xiaomi/accountsdk/account/a/l;,
            Lcom/xiaomi/accountsdk/account/a/q;,
            Lcom/xiaomi/accountsdk/account/a/n;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/account/a/o;
        }
    .end annotation

    if-eqz p0, :cond_b0

    .line 313
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->h:Ljava/lang/String;

    if-eqz v0, :cond_b0

    .line 316
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->g:Ljava/lang/String;

    .line 317
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->h:Ljava/lang/String;

    .line 318
    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->l:Ljava/lang/String;

    .line 319
    iget-object v3, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->i:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_17

    const-string v3, "passport"

    goto :goto_19

    :cond_17
    iget-object v3, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->i:Ljava/lang/String;

    .line 320
    :goto_19
    iget-object v4, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->k:Ljava/lang/String;

    .line 321
    iget-object v5, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->j:Ljava/lang/String;

    .line 322
    iget-object v6, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->q:[Ljava/lang/String;

    .line 323
    iget-boolean v7, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->o:Z

    .line 324
    iget-boolean v8, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->p:Z

    .line 325
    iget-object v9, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->n:Lcom/xiaomi/accountsdk/account/data/h;

    .line 326
    iget-object v10, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->r:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    .line 328
    new-instance v11, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v11}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v12, "user"

    .line 329
    invoke-virtual {v11, v12, v0}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v11

    const-string v12, "hash"

    .line 330
    invoke-static {v1}, Lcom/xiaomi/accountsdk/utils/CloudCoder;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v12, v1}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v1

    const-string v11, "sid"

    .line 331
    invoke-virtual {v1, v11, v3}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v1

    const-string v11, "captCode"

    .line 332
    invoke-virtual {v1, v11, v5}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v1

    const-string v5, "_json"

    const-string v11, "true"

    .line 333
    invoke-virtual {v1, v5, v11}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v1

    .line 334
    invoke-static {v1, v6}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/utils/k;[Ljava/lang/String;)V

    .line 336
    new-instance v5, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v5}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v6, "ick"

    .line 337
    invoke-virtual {v5, v6, v4}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v4

    const-string v5, "ticketToken"

    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->m:Ljava/lang/String;

    .line 338
    invoke-virtual {v4, v5, p0}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p0

    .line 340
    invoke-static {p0, v2}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/utils/k;Ljava/lang/String;)V

    .line 341
    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Ljava/util/Map;)V

    if-eqz v10, :cond_7c

    const-string v2, "userHash"

    .line 344
    iget-object v4, v10, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    const-string v2, "activatorToken"

    .line 345
    iget-object v4, v10, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->c:Ljava/lang/String;

    invoke-virtual {p0, v2, v4}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    .line 348
    :cond_7c
    new-instance v2, Lcom/xiaomi/accountsdk/request/o;

    invoke-direct {v2}, Lcom/xiaomi/accountsdk/request/o;-><init>()V

    .line 349
    invoke-virtual {v2, v1}, Lcom/xiaomi/accountsdk/request/o;->a(Ljava/util/Map;)V

    .line 350
    invoke-virtual {v2, p0}, Lcom/xiaomi/accountsdk/request/o;->d(Ljava/util/Map;)V

    .line 351
    sget-object p0, Lcom/xiaomi/accountsdk/account/g;->s:Ljava/lang/String;

    invoke-virtual {v2, p0}, Lcom/xiaomi/accountsdk/request/o;->a(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 352
    invoke-virtual {v2, p0}, Lcom/xiaomi/accountsdk/request/o;->a(Z)V

    .line 354
    new-instance p0, Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword;

    invoke-direct {p0, v2, v0, v3, v9}, Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword;-><init>(Lcom/xiaomi/accountsdk/request/o;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/h;)V

    .line 359
    :try_start_95
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/n;->e()Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p0
    :try_end_99
    .catch Lcom/xiaomi/a/b/a; {:try_start_95 .. :try_end_99} :catch_a8

    if-eqz p0, :cond_a0

    .line 367
    invoke-static {p0, v3, v8, v7}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;Ljava/lang/String;ZZ)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object p0

    return-object p0

    .line 365
    :cond_a0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "failed to get response from server"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 361
    :catch_a8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "this should never happen in product environment.Have you set sDisableLoginFallbackForTest to be true? "

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 314
    :cond_b0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "password params should not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/account/a/l;,
            Lcom/xiaomi/accountsdk/account/a/o;,
            Lcom/xiaomi/accountsdk/account/a/m;,
            Lcom/xiaomi/accountsdk/account/a/i;
        }
    .end annotation

    if-eqz p0, :cond_a5

    .line 3028
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/account/XMPassport;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/h;

    move-result-object v0

    .line 3030
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, "passport"

    goto :goto_17

    :cond_15
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;->h:Ljava/lang/String;

    .line 3032
    :goto_17
    new-instance v2, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v2}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v3, "user"

    iget-object v4, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;->a:Ljava/lang/String;

    .line 3033
    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v2

    const-string v3, "userHash"

    iget-object v4, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;->d:Ljava/lang/String;

    .line 3034
    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v2

    const-string v3, "ticket"

    iget-object v4, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;->f:Ljava/lang/String;

    .line 3035
    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v2

    const-string v3, "sid"

    .line 3036
    invoke-virtual {v2, v3, v1}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v2

    const-string v3, "_json"

    const-string v4, "true"

    .line 3037
    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v2

    const-string v3, "_sign"

    iget-object v4, v0, Lcom/xiaomi/accountsdk/account/data/h;->a:Ljava/lang/String;

    .line 3038
    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v2

    const-string v3, "qs"

    iget-object v4, v0, Lcom/xiaomi/accountsdk/account/data/h;->b:Ljava/lang/String;

    .line 3039
    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v2

    const-string v3, "callback"

    iget-object v0, v0, Lcom/xiaomi/accountsdk/account/data/h;->c:Ljava/lang/String;

    .line 3040
    invoke-virtual {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    .line 3041
    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;->i:[Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/utils/k;[Ljava/lang/String;)V

    .line 3044
    new-instance v2, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v2}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v3, "activatorToken"

    iget-object v4, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;->e:Ljava/lang/String;

    .line 3045
    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v2

    const-string v3, "ticketToken"

    iget-object v4, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;->b:Ljava/lang/String;

    .line 3046
    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v2

    .line 3048
    iget-object v3, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;->g:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/utils/k;Ljava/lang/String;)V

    .line 3049
    invoke-static {v2}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Ljava/util/Map;)V

    .line 3051
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/xiaomi/accountsdk/account/g;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/serviceLoginTicketAuth"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v0, v2, v4}, Lcom/xiaomi/accountsdk/request/s;->c(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object v0

    if-eqz v0, :cond_9d

    .line 3057
    iget-boolean p0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;->j:Z

    invoke-static {v0, v1, p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;Ljava/lang/String;Z)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object p0

    return-object p0

    .line 3055
    :cond_9d
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    const-string v0, "result content is null"

    invoke-direct {p0, v0}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3026
    :cond_a5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "null phone ticket login params"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/account/a/h;,
            Lcom/xiaomi/accountsdk/account/a/v;,
            Lcom/xiaomi/accountsdk/account/a/x;,
            Lcom/xiaomi/accountsdk/account/a/s;
        }
    .end annotation

    if-eqz p0, :cond_122

    .line 1426
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->a:Ljava/lang/String;

    .line 1427
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->d:Ljava/lang/String;

    .line 1428
    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->f:Ljava/lang/String;

    .line 1429
    iget-object v3, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->h:Ljava/lang/String;

    .line 1430
    iget-object v4, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->b:Ljava/lang/String;

    .line 1431
    iget-object v5, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->e:Ljava/lang/String;

    .line 1432
    iget-boolean v6, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->g:Z

    .line 1433
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->i:Ljava/lang/String;

    .line 1435
    new-instance v7, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v7}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v8, "phone"

    .line 1437
    invoke-virtual {v7, v8, v0}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    const-string v7, "phoneHash"

    .line 1438
    invoke-virtual {v0, v7, v1}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    const-string v1, "password"

    .line 1439
    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    const-string v1, "noPwd"

    .line 1440
    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    const-string v1, "_locale"

    .line 1441
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/accountsdk/utils/XMPassportUtil;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    const-string v1, "region"

    .line 1442
    invoke-virtual {v0, v1, v3}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    const-string v1, "sid"

    .line 1443
    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p0

    const-string v0, "_json"

    const-string v1, "true"

    .line 1444
    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p0

    const-string v0, "acceptLicense"

    const-string v1, "true"

    .line 1445
    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p0

    .line 1447
    new-instance v0, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v1, "activatorToken"

    .line 1448
    invoke-virtual {v0, v1, v5}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    const-string v1, "ticketToken"

    .line 1449
    invoke-virtual {v0, v1, v4}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    const/4 v1, 0x0

    .line 1450
    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/utils/k;Ljava/lang/String;)V

    .line 1451
    invoke-static {v0}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Ljava/util/Map;)V

    .line 1453
    sget-object v1, Lcom/xiaomi/accountsdk/account/g;->I:Ljava/lang/String;

    .line 1455
    invoke-static {v1, v3}, Lcom/xiaomi/accountsdk/account/XMPassport;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    .line 1454
    invoke-static {v1, p0, v0, v3}, Lcom/xiaomi/accountsdk/request/s;->c(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p0

    .line 1458
    :try_start_80
    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;)Ljava/lang/String;

    move-result-object v0

    .line 1459
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "code"

    .line 1460
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v4, "description"

    .line 1461
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1462
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", desc: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-nez v0, :cond_eb

    const-string v0, "userId"

    .line 1464
    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "cUserId"

    .line 1465
    invoke-virtual {p0, v4}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "passToken"

    .line 1466
    invoke-virtual {p0, v5}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v5, "user_synced_url"

    .line 1467
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1468
    new-instance v5, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    invoke-direct {v5}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;-><init>()V

    .line 1469
    invoke-virtual {v5, v0}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object v0

    .line 1470
    invoke-virtual {v0, v4}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->d(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object v0

    .line 1471
    invoke-virtual {v0, p0}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->c(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object p0

    .line 1472
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->a(Z)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object p0

    .line 1473
    invoke-virtual {p0, v1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->l(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object p0

    .line 1474
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->a()Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object p0

    return-object p0

    :cond_eb
    const/16 p0, 0x2721

    if-eq v0, p0, :cond_113

    const/16 p0, 0x5345

    if-eq v0, p0, :cond_10d

    const/16 p0, 0x4e37

    if-eq v0, p0, :cond_107

    const/16 p0, 0x61ac

    if-ne v0, p0, :cond_101

    .line 1482
    new-instance p0, Lcom/xiaomi/accountsdk/account/a/s;

    invoke-direct {p0, v5}, Lcom/xiaomi/accountsdk/account/a/s;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1484
    :cond_101
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    invoke-direct {p0, v5}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1480
    :cond_107
    new-instance p0, Lcom/xiaomi/accountsdk/account/a/x;

    invoke-direct {p0, v5}, Lcom/xiaomi/accountsdk/account/a/x;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1478
    :cond_10d
    new-instance p0, Lcom/xiaomi/accountsdk/account/a/v;

    invoke-direct {p0, v5}, Lcom/xiaomi/accountsdk/account/a/v;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1476
    :cond_113
    new-instance p0, Lcom/xiaomi/accountsdk/account/a/h;

    invoke-direct {p0, v0, v4}, Lcom/xiaomi/accountsdk/account/a/h;-><init>(ILjava/lang/String;)V

    throw p0
    :try_end_119
    .catch Lorg/json/JSONException; {:try_start_80 .. :try_end_119} :catch_119

    :catch_119
    move-exception p0

    .line 1487
    new-instance v0, Lcom/xiaomi/accountsdk/request/k;

    const-string v1, "process result is failed"

    invoke-direct {v0, v1, p0}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1424
    :cond_122
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "phone can not be empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/account/a/q;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/request/k;
        }
    .end annotation

    if-eqz p0, :cond_b4

    .line 564
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->b:Ljava/lang/String;

    .line 565
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->e:Ljava/lang/String;

    .line 566
    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->a:Lcom/xiaomi/accountsdk/account/data/h;

    .line 567
    iget-object v3, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->d:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_13

    const-string v3, "passport"

    goto :goto_15

    :cond_13
    iget-object v3, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->d:Ljava/lang/String;

    .line 569
    :goto_15
    iget-boolean v4, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->f:Z

    .line 570
    iget-boolean v5, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->h:Z

    .line 571
    iget-object v6, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->g:Ljava/lang/String;

    .line 572
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->c:Ljava/lang/String;

    if-eqz v0, :cond_ac

    if-eqz v1, :cond_ac

    if-eqz v2, :cond_ac

    .line 578
    new-instance v7, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v7}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v8, "user"

    .line 579
    invoke-virtual {v7, v8, v0}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    const-string v7, "code"

    .line 580
    invoke-virtual {v0, v7, v1}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    const-string v1, "_sign"

    iget-object v7, v2, Lcom/xiaomi/accountsdk/account/data/h;->a:Ljava/lang/String;

    .line 581
    invoke-virtual {v0, v1, v7}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    const-string v1, "qs"

    iget-object v7, v2, Lcom/xiaomi/accountsdk/account/data/h;->b:Ljava/lang/String;

    .line 582
    invoke-virtual {v0, v1, v7}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    const-string v1, "callback"

    iget-object v2, v2, Lcom/xiaomi/accountsdk/account/data/h;->c:Ljava/lang/String;

    .line 583
    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    const-string v1, "trust"

    if-eqz v4, :cond_53

    const-string v2, "true"

    goto :goto_55

    :cond_53
    const-string v2, "false"

    .line 584
    :goto_55
    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    const-string v1, "sid"

    .line 585
    invoke-virtual {v0, v1, v3}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    const-string v1, "_json"

    const-string v2, "true"

    .line 586
    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    .line 588
    new-instance v1, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v2, "step1Token"

    .line 589
    invoke-virtual {v1, v2, p0}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p0

    .line 590
    invoke-static {p0, v6}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/utils/k;Ljava/lang/String;)V

    .line 592
    sget-object v1, Lcom/xiaomi/accountsdk/account/g;->u:Ljava/lang/String;

    const/4 v2, 0x1

    .line 593
    invoke-static {v1, v0, p0, v2}, Lcom/xiaomi/accountsdk/request/s;->c(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p0

    if-eqz p0, :cond_a4

    const/4 v0, 0x0

    .line 598
    :try_start_7f
    invoke-static {p0, v3, v0, v5}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;Ljava/lang/String;ZZ)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object p0
    :try_end_83
    .catch Lcom/xiaomi/accountsdk/account/a/n; {:try_start_7f .. :try_end_83} :catch_9c
    .catch Lcom/xiaomi/accountsdk/account/a/l; {:try_start_7f .. :try_end_83} :catch_94
    .catch Lcom/xiaomi/accountsdk/account/a/g; {:try_start_7f .. :try_end_83} :catch_8c
    .catch Lcom/xiaomi/accountsdk/account/a/o; {:try_start_7f .. :try_end_83} :catch_84

    return-object p0

    .line 607
    :catch_84
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    const-string v0, "Unexpected NeedNotificationException"

    invoke-direct {p0, v0}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0

    .line 604
    :catch_8c
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    const-string v0, "Unexpected InvalidCredentialException"

    invoke-direct {p0, v0}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0

    .line 602
    :catch_94
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    const-string v0, "Unexpected InvalidUserNameException"

    invoke-direct {p0, v0}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0

    .line 600
    :catch_9c
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    const-string v0, "Unexpected NeedCaptchaException"

    invoke-direct {p0, v0}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0

    .line 595
    :cond_a4
    new-instance p0, Ljava/io/IOException;

    const-string v0, "failed to get response from service server"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 575
    :cond_ac
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "invalid params"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 562
    :cond_b4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "step2 params is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/xiaomi/accountsdk/account/data/m;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/account/a/g;,
            Lcom/xiaomi/accountsdk/account/a/o;
        }
    .end annotation

    if-eqz p0, :cond_2a

    .line 3273
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/m;->b:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    sget-object v5, Lcom/xiaomi/accountsdk/account/XMPassport;->R:Ljava/lang/Integer;

    .line 3274
    invoke-static/range {v0 .. v5}, Lcom/xiaomi/accountsdk/request/s;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/Integer;)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 3280
    :try_start_10
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/m;->a:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p0, v2, v2, v1}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;Ljava/lang/String;ZZZ)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object p0
    :try_end_18
    .catch Lcom/xiaomi/accountsdk/account/a/q; {:try_start_10 .. :try_end_18} :catch_19
    .catch Lcom/xiaomi/accountsdk/account/a/n; {:try_start_10 .. :try_end_18} :catch_19
    .catch Lcom/xiaomi/accountsdk/account/a/l; {:try_start_10 .. :try_end_18} :catch_19

    return-object p0

    :catch_19
    move-exception p0

    .line 3282
    new-instance v0, Lcom/xiaomi/accountsdk/request/k;

    const-string v1, "should not reach here!"

    invoke-direct {v0, v1, p0}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 3276
    :cond_22
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    const-string v0, "long polling result is null"

    invoke-direct {p0, v0}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3271
    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "null long polling para"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;Ljava/lang/String;Z)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/account/a/o;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/account/a/m;,
            Lcom/xiaomi/accountsdk/account/a/i;,
            Lcom/xiaomi/accountsdk/request/c;
        }
    .end annotation

    .line 3081
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;)Ljava/lang/String;

    move-result-object v0

    .line 3082
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "code"

    .line 3083
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 3084
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", desc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "desc"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "XMPassport"

    .line 3085
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processPhoneLoginContent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/accountsdk/utils/d;->h(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_62

    const p0, 0x11178

    if-eq v0, p0, :cond_5c

    const p0, 0x1117e

    if-eq v0, p0, :cond_56

    .line 3114
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    invoke-direct {p0, v2}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3110
    :cond_56
    new-instance p0, Lcom/xiaomi/accountsdk/account/a/m;

    invoke-direct {p0, v2}, Lcom/xiaomi/accountsdk/account/a/m;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3112
    :cond_5c
    new-instance p0, Lcom/xiaomi/accountsdk/account/a/i;

    invoke-direct {p0, v2}, Lcom/xiaomi/accountsdk/account/a/i;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_62
    const-string v0, "userId"

    .line 3088
    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "passToken"

    .line 3089
    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "securityStatus"

    const/4 v4, 0x0

    .line 3091
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_a7

    const-string p1, "notificationUrl"

    .line 3093
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9f

    .line 3097
    new-instance p2, Lcom/xiaomi/accountsdk/account/a/o;

    const-string v0, "http"

    .line 3098
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8a

    goto :goto_9b

    :cond_8a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/accountsdk/account/XMPassport;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_9b
    invoke-direct {p2, v2, p1, p0}, Lcom/xiaomi/accountsdk/account/a/o;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;)V

    throw p2

    .line 3095
    :cond_9f
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    const-string p1, "notificationUrl is null"

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3101
    :cond_a7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c5

    .line 3104
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_bd

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    move v7, p2

    .line 3108
    invoke-static/range {v2 .. v7}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Ljava/lang/String;Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object p0

    return-object p0

    .line 3105
    :cond_bd
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    const-string p1, "no passToken in login response"

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3102
    :cond_c5
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    const-string p1, "no user Id in login response"

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_cd
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_cd} :catch_cd

    .line 3117
    :catch_cd
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    const-string p1, "result not json"

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;Ljava/lang/String;ZZ)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/account/a/g;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/account/a/q;,
            Lcom/xiaomi/accountsdk/account/a/n;,
            Lcom/xiaomi/accountsdk/account/a/l;,
            Lcom/xiaomi/accountsdk/account/a/o;,
            Lcom/xiaomi/accountsdk/request/c;
        }
    .end annotation

    const/4 v0, 0x0

    .line 678
    invoke-static {p0, p1, p2, v0, p3}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;Ljava/lang/String;ZZZ)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;Ljava/lang/String;ZZZ)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/account/a/g;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/account/a/q;,
            Lcom/xiaomi/accountsdk/account/a/n;,
            Lcom/xiaomi/accountsdk/account/a/l;,
            Lcom/xiaomi/accountsdk/account/a/o;,
            Lcom/xiaomi/accountsdk/request/c;
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 688
    invoke-static/range {v0 .. v5}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Ljava/lang/String;Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;Ljava/lang/String;ZZZ)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/k;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;
        }
    .end annotation

    .line 801
    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;)Ljava/lang/String;

    move-result-object v0

    .line 802
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz p4, :cond_18

    const-string p4, "passToken"

    .line 806
    invoke-virtual {v1, p4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v0, "cUserId"

    .line 807
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :cond_18
    const-string p4, "passToken"

    .line 809
    invoke-virtual {p1, p4}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v0, "cUserId"

    .line 810
    invoke-virtual {p1, v0}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_24
    const-string v2, "ssecurity"

    .line 813
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "nonce"

    .line 814
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "psecurity"

    .line 815
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_3a
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3a} :catch_120

    if-eqz v2, :cond_40

    if-eqz v3, :cond_40

    if-nez v4, :cond_7f

    :cond_40
    :try_start_40
    const-string v5, "extension-pragma"

    .line 818
    invoke-virtual {p1, v5}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 819
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_61

    const-string v5, "Extension-Pragma"

    .line 821
    invoke-virtual {p1, v5}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 822
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_59

    goto :goto_61

    .line 823
    :cond_59
    new-instance v5, Lcom/xiaomi/accountsdk/request/k;

    const-string v6, "empty extension-pragma"

    invoke-direct {v5, v6}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw v5

    .line 826
    :cond_61
    :goto_61
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "ssecurity"

    .line 827
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_6c
    .catch Lorg/json/JSONException; {:try_start_40 .. :try_end_6c} :catch_7f

    :try_start_6c
    const-string v2, "nonce"

    .line 828
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2
    :try_end_76
    .catch Lorg/json/JSONException; {:try_start_6c .. :try_end_76} :catch_7e

    :try_start_76
    const-string v3, "psecurity"

    .line 829
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_7c
    .catch Lorg/json/JSONException; {:try_start_76 .. :try_end_7c} :catch_7d

    move-object v4, v3

    :catch_7d
    move-object v3, v2

    :catch_7e
    move-object v2, v5

    :catch_7f
    :cond_7f
    if-eqz v2, :cond_118

    if-eqz v3, :cond_118

    if-eqz v4, :cond_118

    :try_start_85
    const-string v5, "re-pass-token"

    .line 839
    invoke-virtual {p1, v5}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "pwd"

    .line 840
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_95

    goto :goto_96

    :cond_95
    const/4 v7, 0x0

    :goto_96
    const-string v6, "location"

    .line 842
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 843
    new-instance v6, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    invoke-direct {v6}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;-><init>()V

    .line 844
    invoke-virtual {v6, p0}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object p0

    .line 845
    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->d(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object p0

    .line 846
    invoke-virtual {p0, p2}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object p0

    .line 847
    invoke-virtual {p0, p4}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->c(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object p0

    .line 848
    invoke-virtual {p0, v4}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->g(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object p0

    if-nez p3, :cond_b8

    move-object p3, v1

    .line 849
    :cond_b8
    invoke-virtual {p0, p3}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->h(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object p0

    .line 850
    invoke-virtual {p0, v5}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->i(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object p0

    .line 851
    invoke-virtual {p0, v7}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->a(Z)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object p0

    .line 852
    invoke-virtual {p0, v2}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->f(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object p0

    .line 853
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->a()Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object p0

    .line 855
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_117

    const-string p3, "passport"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3
    :try_end_d8
    .catch Lorg/json/JSONException; {:try_start_85 .. :try_end_d8} :catch_120

    if-nez p3, :cond_117

    if-eqz p5, :cond_dd

    goto :goto_117

    .line 861
    :cond_dd
    :try_start_dd
    invoke-static {p0, v3}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/account/data/AccountInfo;Ljava/lang/Long;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object p0
    :try_end_e1
    .catch Lcom/xiaomi/accountsdk/request/a; {:try_start_dd .. :try_end_e1} :catch_10b
    .catch Lcom/xiaomi/accountsdk/request/k; {:try_start_dd .. :try_end_e1} :catch_ff
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_e1} :catch_ee
    .catch Lcom/xiaomi/accountsdk/request/c; {:try_start_dd .. :try_end_e1} :catch_e2
    .catch Lorg/json/JSONException; {:try_start_dd .. :try_end_e1} :catch_120

    return-object p0

    :catch_e2
    move-exception p0

    :try_start_e3
    const-string p3, "XMPassport"

    const-string p4, "sts url request error"

    .line 876
    invoke-static {p3, p4, p0}, Lcom/xiaomi/accountsdk/utils/d;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 877
    invoke-virtual {p0, p2}, Lcom/xiaomi/accountsdk/request/c;->a(Ljava/lang/String;)V

    .line 878
    throw p0

    :catch_ee
    move-exception p0

    const-string p3, "XMPassport"

    const-string p4, "sts url request error"

    .line 871
    invoke-static {p3, p4, p0}, Lcom/xiaomi/accountsdk/utils/d;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 872
    new-instance p3, Lcom/xiaomi/accountsdk/account/a/r;

    invoke-direct {p3, p0}, Lcom/xiaomi/accountsdk/account/a/r;-><init>(Ljava/io/IOException;)V

    .line 873
    invoke-virtual {p3, p2}, Lcom/xiaomi/accountsdk/account/a/r;->a(Ljava/lang/String;)V

    .line 874
    throw p3

    :catch_ff
    move-exception p0

    const-string p3, "XMPassport"

    const-string p4, "sts url request error"

    .line 867
    invoke-static {p3, p4, p0}, Lcom/xiaomi/accountsdk/utils/d;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 868
    invoke-virtual {p0, p2}, Lcom/xiaomi/accountsdk/request/k;->a(Ljava/lang/String;)V

    .line 869
    throw p0

    :catch_10b
    move-exception p0

    const-string p3, "XMPassport"

    const-string p4, "sts url request error"

    .line 863
    invoke-static {p3, p4, p0}, Lcom/xiaomi/accountsdk/utils/d;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 864
    invoke-virtual {p0, p2}, Lcom/xiaomi/accountsdk/request/a;->a(Ljava/lang/String;)V

    .line 865
    throw p0

    :cond_117
    :goto_117
    return-object p0

    .line 836
    :cond_118
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    const-string p2, "security, nonce or psecurity is null"

    invoke-direct {p0, p2}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_120
    .catch Lorg/json/JSONException; {:try_start_e3 .. :try_end_120} :catch_120

    .line 881
    :catch_120
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "parseLoginResult: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "XMPassport"

    invoke-static {p1, p0}, Lcom/xiaomi/accountsdk/utils/d;->j(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    const-string p1, "parseLoginResult JSONException"

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Ljava/lang/String;Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;Ljava/lang/String;ZZZ)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/account/a/g;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/account/a/q;,
            Lcom/xiaomi/accountsdk/account/a/n;,
            Lcom/xiaomi/accountsdk/account/a/l;,
            Lcom/xiaomi/accountsdk/account/a/o;,
            Lcom/xiaomi/accountsdk/request/c;
        }
    .end annotation

    .line 700
    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;)Ljava/lang/String;

    move-result-object v0

    .line 701
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "code"

    .line 702
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "desc"

    .line 703
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "XMPassport"

    .line 704
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processLoginContent, code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", desc: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/accountsdk/utils/d;->h(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    if-eqz v0, :cond_ca

    const/16 p0, 0x4e23

    if-eq v0, p0, :cond_c4

    const p0, 0x11172

    if-eq v0, p0, :cond_be

    const p0, 0x11180

    if-eq v0, p0, :cond_89

    const p0, 0x13c6b

    if-eq v0, p0, :cond_60

    const p0, 0x153d9

    if-eq v0, p0, :cond_54

    .line 785
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    invoke-direct {p0, v0, v2}, Lcom/xiaomi/accountsdk/request/k;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_54
    const-string p0, "captchaUrl"

    .line 772
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 773
    new-instance p2, Lcom/xiaomi/accountsdk/account/a/n;

    invoke-direct {p2, v0, v2, p0}, Lcom/xiaomi/accountsdk/account/a/n;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw p2

    :cond_60
    const-string p0, "_sign"

    .line 776
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "qs"

    .line 777
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "callback"

    .line 778
    invoke-virtual {v1, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "step1Token"

    .line 779
    invoke-virtual {p1, p4}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string p5, "userId"

    .line 780
    invoke-virtual {v1, p5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 781
    new-instance v0, Lcom/xiaomi/accountsdk/account/a/q;

    new-instance v1, Lcom/xiaomi/accountsdk/account/data/h;

    invoke-direct {v1, p0, p2, p3}, Lcom/xiaomi/accountsdk/account/data/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, p4, p5}, Lcom/xiaomi/accountsdk/account/a/q;-><init>(Lcom/xiaomi/accountsdk/account/data/h;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_89
    const-string p0, "_sign"

    .line 758
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "qs"

    .line 759
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "callback"

    .line 760
    invoke-virtual {v1, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "captchaUrl"

    .line 761
    invoke-virtual {v1, p4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string p5, "null"

    .line 762
    invoke-static {p5, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_aa

    const/4 p4, 0x0

    .line 765
    :cond_aa
    new-instance p5, Lcom/xiaomi/accountsdk/account/a/g;

    const/4 v1, 0x1

    invoke-direct {p5, v0, v2, v1}, Lcom/xiaomi/accountsdk/account/a/g;-><init>(ILjava/lang/String;Z)V

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/h;

    invoke-direct {v0, p0, p2, p3}, Lcom/xiaomi/accountsdk/account/data/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    invoke-virtual {p5, v0}, Lcom/xiaomi/accountsdk/account/a/g;->a(Lcom/xiaomi/accountsdk/account/data/h;)Lcom/xiaomi/accountsdk/account/a/g;

    move-result-object p0

    .line 767
    invoke-virtual {p0, p4}, Lcom/xiaomi/accountsdk/account/a/g;->b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/a/g;

    move-result-object p0

    throw p0

    .line 770
    :cond_be
    new-instance p0, Lcom/xiaomi/accountsdk/account/a/g;

    invoke-direct {p0, v0, v2, v3}, Lcom/xiaomi/accountsdk/account/a/g;-><init>(ILjava/lang/String;Z)V

    throw p0

    .line 755
    :cond_c4
    new-instance p0, Lcom/xiaomi/accountsdk/account/a/l;

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/account/a/l;-><init>()V

    throw p0

    :cond_ca
    if-eqz p4, :cond_da

    const-string v0, "userId"

    .line 712
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "passToken"

    .line 713
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_d8
    move-object v4, v0

    goto :goto_e7

    :cond_da
    const-string v0, "userId"

    .line 715
    invoke-virtual {p1, v0}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "passToken"

    .line 716
    invoke-virtual {p1, v2}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_d8

    :goto_e7
    if-eqz p3, :cond_f4

    if-eqz p0, :cond_f4

    const-string p0, "disableHotfixMiui73508"

    .line 724
    invoke-virtual {v1, p0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_f4

    const/4 p3, 0x0

    :cond_f4
    const-string p0, "securityStatus"

    .line 729
    invoke-virtual {v1, p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    const-string v0, "XMPassport"

    .line 730
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "securityStatus: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaomi/accountsdk/utils/d;->h(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_149

    if-eqz p0, :cond_149

    const-string p0, "notificationUrl"

    .line 732
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_141

    const-string p2, "http"

    .line 736
    invoke-virtual {p0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_12a

    .line 737
    new-instance p2, Lcom/xiaomi/accountsdk/account/a/o;

    invoke-direct {p2, v4, p0, p1}, Lcom/xiaomi/accountsdk/account/a/o;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;)V

    throw p2

    .line 739
    :cond_12a
    new-instance p2, Lcom/xiaomi/accountsdk/account/a/o;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p4, Lcom/xiaomi/accountsdk/account/XMPassport;->b:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, v4, p0, p1}, Lcom/xiaomi/accountsdk/account/a/o;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;)V

    throw p2

    .line 734
    :cond_141
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    const-string p2, "noticationUrl is null"

    invoke-direct {p0, p2}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0

    .line 744
    :cond_149
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_167

    .line 747
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_15f

    const/4 v7, 0x0

    move-object v5, p1

    move-object v6, p2

    move v8, p4

    move v9, p5

    .line 751
    invoke-static/range {v4 .. v9}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Ljava/lang/String;Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object p0

    return-object p0

    .line 748
    :cond_15f
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    const-string p2, "no passToken in login response"

    invoke-direct {p0, p2}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0

    .line 745
    :cond_167
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    const-string p2, "no user Id"

    invoke-direct {p0, p2}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_16f
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_16f} :catch_16f

    .line 789
    :catch_16f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "processLoginContent: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "XMPassport"

    invoke-static {p1, p0}, Lcom/xiaomi/accountsdk/utils/d;->j(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    const-string p1, "processLoginContent JSONException"

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/account/a/g;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/account/a/l;
        }
    .end annotation

    .line 375
    sget-object v0, Lcom/xiaomi/accountsdk/account/g;->M:Ljava/lang/String;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/h;ZLjava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/account/a/q;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/request/k;
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .line 527
    invoke-static/range {v0 .. v7}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/h;ZLjava/lang/String;Z)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/h;ZLjava/lang/String;Z)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/account/a/q;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/request/k;
        }
    .end annotation

    .line 545
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;-><init>()V

    .line 546
    invoke-virtual {v0, p0}, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;->a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;

    move-result-object p0

    .line 547
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;->c(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;

    move-result-object p0

    .line 548
    invoke-virtual {p0, p2}, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;->e(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;

    move-result-object p0

    .line 549
    invoke-virtual {p0, p3}, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;->d(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;

    move-result-object p0

    .line 550
    invoke-virtual {p0, p4}, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;->a(Lcom/xiaomi/accountsdk/account/data/h;)Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;

    move-result-object p0

    .line 551
    invoke-virtual {p0, p5}, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;->a(Z)Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;

    move-result-object p0

    .line 552
    invoke-virtual {p0, p6}, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;->b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;

    move-result-object p0

    .line 553
    invoke-virtual {p0, p7}, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;->b(Z)Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;

    move-result-object p0

    .line 554
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;->a()Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;

    move-result-object p0

    .line 555
    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/account/a/g;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/account/a/l;
        }
    .end annotation

    .line 404
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaomi/accountsdk/account/XMPassport;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object p0
    :try_end_4
    .catch Lcom/xiaomi/accountsdk/account/a/o; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    .line 406
    :catch_5
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    const-string p1, "Unexpected NeedNotificationException"

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/account/a/g;,
            Lcom/xiaomi/accountsdk/account/a/l;,
            Lcom/xiaomi/accountsdk/account/a/q;,
            Lcom/xiaomi/accountsdk/account/a/n;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/account/a/o;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 274
    :try_start_3
    invoke-static {}, Lcom/xiaomi/accountsdk/account/PassportCATokenManager;->d()Lcom/xiaomi/accountsdk/account/PassportCATokenManager;

    move-result-object v9

    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p1

    move-object v4, p4

    move-object/from16 v5, p5

    .line 272
    invoke-static/range {v0 .. v10}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/h;Z[Ljava/lang/String;Lcom/xiaomi/accountsdk/account/PassportCATokenManager;Z)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object v0
    :try_end_13
    .catch Lcom/xiaomi/a/b/a; {:try_start_3 .. :try_end_13} :catch_1c
    .catch Lcom/xiaomi/accountsdk/account/a/o; {:try_start_3 .. :try_end_13} :catch_14

    return-object v0

    .line 279
    :catch_14
    new-instance v0, Lcom/xiaomi/accountsdk/request/k;

    const-string v1, "Unexpected NeedNotificationException"

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :catch_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this should never happen in product environment.Have you set sDisableLoginFallbackForTest to be true? "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/h;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/account/a/g;,
            Lcom/xiaomi/accountsdk/account/a/l;,
            Lcom/xiaomi/accountsdk/account/a/q;,
            Lcom/xiaomi/accountsdk/account/a/n;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 213
    :try_start_8
    invoke-static/range {v0 .. v7}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/h;Z)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object p0
    :try_end_c
    .catch Lcom/xiaomi/accountsdk/account/a/o; {:try_start_8 .. :try_end_c} :catch_d

    return-object p0

    .line 216
    :catch_d
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    const-string p1, "Unexpected NeedNotificationException"

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/h;Z)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/account/a/g;,
            Lcom/xiaomi/accountsdk/account/a/l;,
            Lcom/xiaomi/accountsdk/account/a/q;,
            Lcom/xiaomi/accountsdk/account/a/n;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/account/a/o;
        }
    .end annotation

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    .line 227
    invoke-static/range {v0 .. v8}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/h;Z[Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/h;Z[Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/account/a/g;,
            Lcom/xiaomi/accountsdk/account/a/l;,
            Lcom/xiaomi/accountsdk/account/a/q;,
            Lcom/xiaomi/accountsdk/account/a/n;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/account/a/o;
        }
    .end annotation

    .line 241
    :try_start_0
    invoke-static {}, Lcom/xiaomi/accountsdk/account/PassportCATokenManager;->d()Lcom/xiaomi/accountsdk/account/PassportCATokenManager;

    move-result-object v9

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 239
    invoke-static/range {v0 .. v10}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/h;Z[Ljava/lang/String;Lcom/xiaomi/accountsdk/account/PassportCATokenManager;Z)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object v0
    :try_end_16
    .catch Lcom/xiaomi/a/b/a; {:try_start_0 .. :try_end_16} :catch_17

    return-object v0

    .line 243
    :catch_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this should never happen in product environment.Have you set sDisableLoginFallbackForTest to be true? "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/h;Z[Ljava/lang/String;Lcom/xiaomi/accountsdk/account/PassportCATokenManager;Z)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/account/a/g;,
            Lcom/xiaomi/accountsdk/account/a/l;,
            Lcom/xiaomi/accountsdk/account/a/q;,
            Lcom/xiaomi/accountsdk/account/a/n;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/account/a/o;,
            Lcom/xiaomi/a/b/a;
        }
    .end annotation

    .line 292
    new-instance p9, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;

    invoke-direct {p9}, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;-><init>()V

    .line 293
    invoke-virtual {p9, p0}, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;

    move-result-object p0

    .line 294
    invoke-virtual {p0, p3}, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;

    move-result-object p0

    .line 295
    invoke-virtual {p0, p2}, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->f(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;

    move-result-object p0

    .line 296
    invoke-virtual {p0, p4}, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->d(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;

    move-result-object p0

    .line 297
    invoke-virtual {p0, p5}, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->e(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;

    move-result-object p0

    .line 298
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->c(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;

    move-result-object p0

    .line 299
    invoke-virtual {p0, p6}, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->a(Lcom/xiaomi/accountsdk/account/data/h;)Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;

    move-result-object p0

    .line 300
    invoke-virtual {p0, p7}, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->b(Z)Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;

    move-result-object p0

    .line 301
    invoke-virtual {p0, p10}, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->a(Z)Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;

    move-result-object p0

    .line 302
    invoke-virtual {p0, p8}, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->a([Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;

    move-result-object p0

    .line 303
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->a()Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;

    move-result-object p0

    .line 304
    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/account/a/g;,
            Lcom/xiaomi/accountsdk/account/a/l;,
            Lcom/xiaomi/accountsdk/account/a/q;,
            Lcom/xiaomi/accountsdk/account/a/n;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/account/a/o;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 257
    :try_start_2
    invoke-static {}, Lcom/xiaomi/accountsdk/account/PassportCATokenManager;->d()Lcom/xiaomi/accountsdk/account/PassportCATokenManager;

    move-result-object v9

    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p1

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v8, p6

    .line 255
    invoke-static/range {v0 .. v10}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/h;Z[Ljava/lang/String;Lcom/xiaomi/accountsdk/account/PassportCATokenManager;Z)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object v0
    :try_end_14
    .catch Lcom/xiaomi/a/b/a; {:try_start_2 .. :try_end_14} :catch_15

    return-object v0

    .line 259
    :catch_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this should never happen in product environment.Have you set sDisableLoginFallbackForTest to be true? "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/account/a/j;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/account/a/x;
        }
    .end annotation

    if-eqz p0, :cond_11c

    .line 1325
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams;->a:Ljava/lang/String;

    .line 1326
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams;->b:Ljava/lang/String;

    .line 1327
    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams;->c:Ljava/lang/String;

    .line 1328
    iget-object v3, p0, Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams;->d:Ljava/lang/String;

    .line 1329
    iget-object v4, p0, Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams;->e:Ljava/lang/String;

    .line 1330
    iget-object v5, p0, Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams;->f:Ljava/lang/String;

    .line 1331
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams;->g:Ljava/lang/String;

    .line 1333
    new-instance v6, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v6}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v7, "phone"

    .line 1334
    invoke-virtual {v6, v7, v0}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v6

    const-string v7, "ticket"

    .line 1335
    invoke-virtual {v6, v7, v1}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v1

    const-string v6, "simId"

    .line 1336
    invoke-virtual {v1, v6, v2}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v1

    const-string v2, "vkey2"

    .line 1337
    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v1

    const-string v2, "nonce"

    .line 1338
    invoke-virtual {v1, v2, v4}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v1

    const-string v2, "region"

    .line 1339
    invoke-virtual {v1, v2, p0}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v1

    .line 1340
    invoke-static {}, Lcom/xiaomi/passport/PassportUserEnvironment$Holder;->a()Lcom/xiaomi/passport/PassportUserEnvironment;

    move-result-object v2

    .line 1341
    invoke-static {}, Lcom/xiaomi/accountsdk/account/h;->e()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/passport/PassportUserEnvironment;->g(Landroid/app/Application;)[Ljava/lang/String;

    move-result-object v2

    .line 1340
    invoke-static {v1, v2}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/utils/k;[Ljava/lang/String;)V

    .line 1343
    new-instance v2, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v2}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    .line 1344
    invoke-static {v2, v5}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/utils/k;Ljava/lang/String;)V

    .line 1346
    sget-object v3, Lcom/xiaomi/accountsdk/account/g;->H:Ljava/lang/String;

    .line 1347
    invoke-static {v3, p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3}, Lcom/xiaomi/accountsdk/request/s;->c(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p0

    .line 1350
    :try_start_5b
    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;)Ljava/lang/String;

    move-result-object v1

    .line 1351
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "code"

    .line 1352
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1353
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", desc: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "description"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_f9

    const-string v1, "data"

    .line 1355
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "ticketToken"

    .line 1356
    invoke-virtual {p0, v2}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_f1

    .line 1360
    new-instance v2, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;

    const-string v3, "status"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;-><init>(I)V

    .line 1361
    invoke-virtual {v2, v0}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->e(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;

    move-result-object v0

    const-string v2, "userId"

    const/4 v3, 0x0

    .line 1362
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;

    move-result-object v0

    const-string v2, "userName"

    .line 1363
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;

    move-result-object v0

    const-string v2, "portraitUrl"

    .line 1364
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->c(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;

    move-result-object v0

    const-string v2, "bindTime"

    const-wide/16 v3, 0x0

    .line 1365
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->a(J)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;

    move-result-object v0

    const-string v2, "needGetActiveTime"

    const/4 v3, 0x0

    .line 1366
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->b(Z)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;

    move-result-object v0

    const-string v2, "needToast"

    .line 1367
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->c(Z)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;

    move-result-object v0

    .line 1368
    invoke-virtual {v0, p0}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->d(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;

    move-result-object p0

    .line 1369
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->a()Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    move-result-object p0

    return-object p0

    .line 1358
    :cond_f1
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    const-string v0, "fail to get ticketToken"

    invoke-direct {p0, v0}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f9
    const/16 p0, 0x2721

    if-eq v1, p0, :cond_10d

    const/16 p0, 0x4e37

    if-ne v1, p0, :cond_107

    .line 1373
    new-instance p0, Lcom/xiaomi/accountsdk/account/a/x;

    invoke-direct {p0, v3}, Lcom/xiaomi/accountsdk/account/a/x;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1375
    :cond_107
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    invoke-direct {p0, v1, v3}, Lcom/xiaomi/accountsdk/request/k;-><init>(ILjava/lang/String;)V

    throw p0

    .line 1371
    :cond_10d
    new-instance p0, Lcom/xiaomi/accountsdk/account/a/j;

    invoke-direct {p0, v3}, Lcom/xiaomi/accountsdk/account/a/j;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_113
    .catch Lorg/json/JSONException; {:try_start_5b .. :try_end_113} :catch_113

    :catch_113
    move-exception p0

    .line 1378
    new-instance v0, Lcom/xiaomi/accountsdk/request/k;

    const-string v1, "process result is failed"

    invoke-direct {v0, v1, p0}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1323
    :cond_11c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "check reg phone params can not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/account/a/m;,
            Lcom/xiaomi/accountsdk/account/a/i;
        }
    .end annotation

    if-eqz p0, :cond_154

    .line 2969
    new-instance v0, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v1, "user"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams;->a:Ljava/lang/String;

    .line 2970
    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    const-string v1, "ticket"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams;->c:Ljava/lang/String;

    .line 2971
    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    const-string v1, "userHash"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams;->d:Ljava/lang/String;

    .line 2972
    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    const-string v1, "_json"

    const-string v2, "true"

    .line 2973
    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    .line 2975
    new-instance v1, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v2, "activatorToken"

    iget-object v3, p0, Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams;->e:Ljava/lang/String;

    .line 2976
    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v1

    .line 2978
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams;->b:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/utils/k;Ljava/lang/String;)V

    .line 2980
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/xiaomi/accountsdk/account/g;->e:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/phoneInfo"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/xiaomi/accountsdk/request/s;->c(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p0

    if-eqz p0, :cond_14c

    .line 2985
    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;)Ljava/lang/String;

    move-result-object v0

    .line 2987
    :try_start_57
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "code"

    .line 2988
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 2989
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", desc: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "description"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "XMPassport"

    .line 2990
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "queryPhoneUserInfo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaomi/accountsdk/utils/d;->h(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_b4

    const/16 p0, 0x272f

    if-eq v0, p0, :cond_ae

    const p0, 0x11178

    if-eq v0, p0, :cond_a8

    .line 3014
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    invoke-direct {p0, v0, v3}, Lcom/xiaomi/accountsdk/request/k;-><init>(ILjava/lang/String;)V

    throw p0

    .line 3010
    :cond_a8
    new-instance p0, Lcom/xiaomi/accountsdk/account/a/i;

    invoke-direct {p0, v3}, Lcom/xiaomi/accountsdk/account/a/i;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3012
    :cond_ae
    new-instance p0, Lcom/xiaomi/accountsdk/account/a/m;

    invoke-direct {p0, v3}, Lcom/xiaomi/accountsdk/account/a/m;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b4
    const-string v0, "ticketToken"

    .line 2993
    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "data"

    .line 2994
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2995
    new-instance v1, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;

    const-string v3, "status"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v3}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;-><init>(I)V

    const-string v3, "id"

    .line 2996
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;

    move-result-object v1

    const-string v3, "nickname"

    .line 2997
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;

    move-result-object v1

    const-string v3, "portrait"

    .line 2998
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->c(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;

    move-result-object v1

    const-string v3, "phone"

    .line 2999
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->e(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;

    move-result-object v1

    .line 3000
    invoke-virtual {v1, p0}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->d(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;

    move-result-object p0

    const-string v1, "maskedUserId"

    .line 3001
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->f(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;

    move-result-object p0

    const-string v1, "pwd"

    .line 3002
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_10c

    const/4 v1, 0x1

    goto :goto_10d

    :cond_10c
    const/4 v1, 0x0

    :goto_10d
    invoke-virtual {p0, v1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->a(Z)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;

    move-result-object p0

    const-string v1, "bindTime"

    const-wide/16 v4, 0x0

    .line 3003
    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->a(J)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;

    move-result-object p0

    const-string v1, "needGetActiveTime"

    .line 3004
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->b(Z)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;

    move-result-object p0

    const-string v1, "needToast"

    .line 3005
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->c(Z)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;

    move-result-object p0

    const-string v1, "registerPwd"

    .line 3006
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_13a

    goto :goto_13b

    :cond_13a
    const/4 v2, 0x0

    :goto_13b
    invoke-virtual {p0, v2}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->d(Z)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;

    move-result-object p0

    .line 3007
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->a()Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    move-result-object p0
    :try_end_143
    .catch Lorg/json/JSONException; {:try_start_57 .. :try_end_143} :catch_144

    return-object p0

    .line 3017
    :catch_144
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    const-string v0, "result not json"

    invoke-direct {p0, v0}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2983
    :cond_14c
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    const-string v0, "result content is null"

    invoke-direct {p0, v0}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2967
    :cond_154
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid params"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Ljava/lang/String;Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/k;
        }
    .end annotation

    if-eqz p1, :cond_256

    const-string v0, "code"

    .line 2725
    invoke-virtual {p1, v0}, Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2726
    sget-object v1, Lcom/xiaomi/accountsdk/account/XMPassport;->p:Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_231

    .line 2727
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;

    invoke-direct {v0, p0}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;-><init>(Ljava/lang/String;)V

    const-string p0, "data"

    .line 2729
    invoke-virtual {p1, p0}, Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 2730
    instance-of p1, p0, Ljava/util/Map;

    if-eqz p1, :cond_22c

    .line 2731
    check-cast p0, Ljava/util/Map;

    const-string p1, "userName"

    .line 2732
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2733
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_30

    .line 2734
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;->a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;

    :cond_30
    const-string p1, "icon"

    .line 2737
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2738
    instance-of v1, p1, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_70

    .line 2739
    check-cast p1, Ljava/lang/String;

    const-string v1, "."

    .line 2740
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 2741
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_70

    if-lez v1, :cond_70

    .line 2744
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, "."

    .line 2745
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 2746
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_320"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;->c(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;

    :cond_70
    const-string p1, "sns"

    .line 2752
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2753
    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_83

    .line 2754
    check-cast p1, Ljava/util/List;

    .line 2755
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$SnsInfo;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    .line 2756
    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;->b(Ljava/util/ArrayList;)V

    :cond_83
    const-string p1, "userAddresses"

    .line 2759
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2760
    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_114

    .line 2761
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2762
    check-cast p1, Ljava/util/List;

    .line 2763
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_98
    :goto_98
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_111

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 2764
    instance-of v4, v3, Ljava/util/Map;

    if-eqz v4, :cond_98

    .line 2765
    check-cast v3, Ljava/util/Map;

    const-string v4, "addressType"

    .line 2766
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "address"

    .line 2767
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "flags"

    .line 2768
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 2769
    instance-of v6, v4, Ljava/lang/Integer;

    if-eqz v6, :cond_98

    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_98

    .line 2771
    check-cast v4, Ljava/lang/Integer;

    .line 2772
    check-cast v5, Ljava/lang/String;

    .line 2773
    sget-object v6, Lcom/xiaomi/accountsdk/account/XMPassport;->p:Ljava/lang/Integer;

    .line 2774
    instance-of v7, v3, Ljava/lang/Integer;

    if-eqz v7, :cond_cf

    .line 2775
    move-object v6, v3

    check-cast v6, Ljava/lang/Integer;

    .line 2777
    :cond_cf
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_d9

    const/4 v3, 0x1

    goto :goto_da

    :cond_d9
    const/4 v3, 0x0

    .line 2778
    :goto_da
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v7, 0x9

    if-eq v4, v7, :cond_101

    packed-switch v4, :pswitch_data_25e

    goto :goto_98

    :pswitch_e6
    if-eqz v3, :cond_98

    .line 2792
    invoke-virtual {v0, v5}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;->e(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;

    goto :goto_98

    :pswitch_ec
    if-eqz v3, :cond_f5

    .line 2782
    invoke-virtual {v0, v5}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;->d(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;

    .line 2783
    invoke-virtual {v1, v2, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_98

    .line 2784
    :cond_f5
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_98

    .line 2786
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_98

    :cond_101
    const-string v3, "@ALIAS"

    .line 2797
    invoke-virtual {v5, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_10d

    .line 2800
    invoke-virtual {v5, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 2803
    :cond_10d
    invoke-virtual {v0, v5}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;->b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;

    goto :goto_98

    .line 2809
    :cond_111
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;->a(Ljava/util/ArrayList;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;

    :cond_114
    const-string p1, "birthday"

    .line 2812
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2813
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_147

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_147

    .line 2814
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 2815
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2817
    :try_start_132
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 2818
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2819
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;->a(Ljava/util/Calendar;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;
    :try_end_13e
    .catch Ljava/text/ParseException; {:try_start_132 .. :try_end_13e} :catch_13f

    goto :goto_147

    :catch_13f
    move-exception p1

    const-string v1, "XMPassport"

    const-string v2, "getXiaomiUserProfile"

    .line 2821
    invoke-static {v1, v2, p1}, Lcom/xiaomi/accountsdk/utils/d;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_147
    :goto_147
    const-string p1, "gender"

    .line 2825
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2826
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_174

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_174

    const-string v1, "m"

    .line 2828
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_167

    .line 2829
    sget-object p1, Lcom/xiaomi/accountsdk/account/data/f;->a:Lcom/xiaomi/accountsdk/account/data/f;

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;->a(Lcom/xiaomi/accountsdk/account/data/f;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;

    goto :goto_174

    :cond_167
    const-string v1, "f"

    .line 2830
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_174

    .line 2831
    sget-object p1, Lcom/xiaomi/accountsdk/account/data/f;->b:Lcom/xiaomi/accountsdk/account/data/f;

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;->a(Lcom/xiaomi/accountsdk/account/data/f;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;

    :cond_174
    :goto_174
    const-string p1, "isSetSafeQuestions"

    .line 2835
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_189

    .line 2836
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_189

    .line 2837
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;->a(Z)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;

    :cond_189
    const-string p1, "locale"

    .line 2840
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2841
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_19e

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19e

    .line 2842
    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;->f(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;

    :cond_19e
    const-string p1, "region"

    .line 2845
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2846
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1b3

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b3

    .line 2847
    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;->g(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;

    :cond_1b3
    const-string p1, "location"

    .line 2850
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1c4

    .line 2851
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1c4

    .line 2852
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;->h(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;

    :cond_1c4
    const-string p1, "education"

    .line 2855
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2856
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1f8

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f8

    .line 2857
    invoke-static {v1}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    move-result-object v1

    if-eqz v1, :cond_1e1

    .line 2861
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;->a(Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;

    goto :goto_1f8

    .line 2859
    :cond_1e1
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid education value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1f8
    :goto_1f8
    const-string p1, "income"

    .line 2865
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 2866
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_22c

    move-object p1, p0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22c

    .line 2867
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;->a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    move-result-object p1

    if-eqz p1, :cond_215

    .line 2871
    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;->a(Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;

    goto :goto_22c

    .line 2869
    :cond_215
    new-instance p1, Lcom/xiaomi/accountsdk/request/k;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid income value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2875
    :cond_22c
    :goto_22c
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;->a()Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;

    move-result-object p0

    return-object p0

    :cond_231
    const-string p0, "description"

    .line 2877
    invoke-virtual {p1, p0}, Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 2878
    new-instance p1, Lcom/xiaomi/accountsdk/request/k;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "; description: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2723
    :cond_256
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    const-string p1, "result content is null"

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_25e
    .packed-switch 0x1
        :pswitch_ec
        :pswitch_e6
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/h;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/account/a/l;
        }
    .end annotation

    const/4 v0, 0x0

    .line 652
    :try_start_1
    invoke-static {p0, p1, v0, v0}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    :try_end_4
    .catch Lcom/xiaomi/accountsdk/account/a/g; {:try_start_1 .. :try_end_4} :catch_c

    .line 656
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    const-string p1, "Unexpected login success with empty pass token"

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_c
    move-exception p0

    .line 654
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/a/g;->a()Lcom/xiaomi/accountsdk/account/data/h;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/i;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/account/a/p;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/request/a;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string p0, "extra_scope"

    .line 1611
    invoke-virtual {p5, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_44

    const-string p5, "3"

    .line 1612
    invoke-virtual {p0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_44

    .line 1617
    :try_start_10
    new-instance p0, Lcom/xiaomi/accountsdk/account/data/OAuthParameter$Builder;

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/account/data/OAuthParameter$Builder;-><init>()V

    .line 1618
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/account/data/OAuthParameter$Builder;->a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/OAuthParameter$Builder;

    move-result-object p0

    .line 1619
    invoke-virtual {p0, p2}, Lcom/xiaomi/accountsdk/account/data/OAuthParameter$Builder;->b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/OAuthParameter$Builder;

    move-result-object p0

    .line 1620
    invoke-virtual {p0, p3}, Lcom/xiaomi/accountsdk/account/data/OAuthParameter$Builder;->c(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/OAuthParameter$Builder;

    move-result-object p0

    .line 1621
    invoke-virtual {p0, p4}, Lcom/xiaomi/accountsdk/account/data/OAuthParameter$Builder;->j(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/OAuthParameter$Builder;

    move-result-object p0

    const-string p1, "3"

    .line 1622
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/account/data/OAuthParameter$Builder;->d(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/OAuthParameter$Builder;

    move-result-object p0

    .line 1623
    invoke-virtual {p0, p6}, Lcom/xiaomi/accountsdk/account/data/OAuthParameter$Builder;->f(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/OAuthParameter$Builder;

    move-result-object p0

    const-string p1, "token"

    .line 1624
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/account/data/OAuthParameter$Builder;->e(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/OAuthParameter$Builder;

    move-result-object p0

    .line 1625
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/OAuthParameter$Builder;->a()Lcom/xiaomi/accountsdk/account/data/OAuthParameter;

    move-result-object p0

    .line 1627
    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/account/data/OAuthParameter;)Lcom/xiaomi/accountsdk/account/data/i;

    move-result-object p0
    :try_end_3d
    .catch Lcom/xiaomi/accountsdk/request/k; {:try_start_10 .. :try_end_3d} :catch_3e

    return-object p0

    .line 1629
    :catch_3e
    new-instance p0, Lcom/xiaomi/accountsdk/account/a/p;

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/account/a/p;-><init>()V

    throw p0

    .line 1614
    :cond_44
    new-instance p0, Lcom/xiaomi/accountsdk/account/a/p;

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/account/a/p;-><init>()V

    throw p0
.end method

.method public static a(Lcom/xiaomi/accountsdk/account/data/OAuthParameter;)Lcom/xiaomi/accountsdk/account/data/i;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/account/a/p;,
            Lcom/xiaomi/accountsdk/request/c;
        }
    .end annotation

    .line 1635
    new-instance v0, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v1, "serviceToken"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/OAuthParameter;->f:Ljava/lang/String;

    .line 1636
    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    .line 1637
    iget-boolean v1, p0, Lcom/xiaomi/accountsdk/account/data/OAuthParameter;->l:Z

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/OAuthParameter;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "cUserId"

    .line 1638
    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/OAuthParameter;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    goto :goto_28

    :cond_21
    const-string v1, "userId"

    .line 1640
    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/OAuthParameter;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    :goto_28
    const-string v1, "deviceId"

    .line 1642
    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/OAuthParameter;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    const-string v1, "userSpaceId"

    .line 1643
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/y;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    .line 1644
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/OAuthParameter;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_44

    const-string v1, "token"

    .line 1645
    iput-object v1, p0, Lcom/xiaomi/accountsdk/account/data/OAuthParameter;->e:Ljava/lang/String;

    .line 1648
    :cond_44
    new-instance v1, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v2, "client_id"

    iget-object v3, p0, Lcom/xiaomi/accountsdk/account/data/OAuthParameter;->b:Ljava/lang/String;

    .line 1649
    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v1

    const-string v2, "redirect_uri"

    iget-object v3, p0, Lcom/xiaomi/accountsdk/account/data/OAuthParameter;->c:Ljava/lang/String;

    .line 1650
    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v1

    const-string v2, "response_type"

    iget-object v3, p0, Lcom/xiaomi/accountsdk/account/data/OAuthParameter;->e:Ljava/lang/String;

    .line 1651
    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v1

    const-string v2, "scope"

    iget-object v3, p0, Lcom/xiaomi/accountsdk/account/data/OAuthParameter;->d:Ljava/lang/String;

    .line 1652
    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v1

    const-string v2, "skip_confirm"

    const-string v3, "true"

    .line 1653
    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v1

    const-string v2, "state"

    iget-object v3, p0, Lcom/xiaomi/accountsdk/account/data/OAuthParameter;->i:Ljava/lang/String;

    .line 1654
    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v1

    const-string v2, "_json"

    const-string v3, "true"

    .line 1655
    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v1

    .line 1656
    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/OAuthParameter;->h:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9c

    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/OAuthParameter;->h:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9c

    const-string v2, "device_id"

    .line 1657
    iget-object v3, p0, Lcom/xiaomi/accountsdk/account/data/OAuthParameter;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    :cond_9c
    const-string v2, "pt"

    .line 1659
    iget-object v3, p0, Lcom/xiaomi/accountsdk/account/data/OAuthParameter;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    .line 1661
    sget-object v2, Lcom/xiaomi/accountsdk/account/g;->K:Ljava/lang/String;

    const/4 v3, 0x1

    .line 1662
    invoke-static {v2, v1, v0, v3}, Lcom/xiaomi/accountsdk/request/s;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object v0

    .line 1663
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/OAuthParameter;->e:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Ljava/lang/String;Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;)Lcom/xiaomi/accountsdk/account/data/i;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/String;Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;)Lcom/xiaomi/accountsdk/account/data/i;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/account/a/p;,
            Lcom/xiaomi/accountsdk/request/c;
        }
    .end annotation

    if-eqz p0, :cond_10a

    if-eqz p1, :cond_102

    .line 1684
    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->a()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Content-Type"

    .line 1685
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_eb

    .line 1686
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "json"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_eb

    .line 1691
    :try_start_1e
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_d8

    .line 1695
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "code"

    .line 1696
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const v2, 0x11180

    if-eq v1, v2, :cond_d2

    if-nez v1, :cond_cc

    const-string p1, "result"

    .line 1699
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_cc

    const-string p1, "data"

    .line 1703
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "code"

    .line 1705
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_74

    const-string p0, "redirectUrl"

    .line 1706
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1707
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string p1, "code"

    .line 1708
    invoke-virtual {p0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1709
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6e

    move-object v1, p0

    move-object p0, v0

    move-object p1, p0

    move-object v2, p1

    move-object v3, v2

    move-object v4, v3

    goto :goto_a1

    .line 1710
    :cond_6e
    new-instance p0, Lcom/xiaomi/accountsdk/account/a/p;

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/account/a/p;-><init>()V

    throw p0

    :cond_74
    const-string p0, "access_token"

    .line 1713
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1714
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c6

    const-string v1, "expires_in"

    .line 1717
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "scope"

    .line 1718
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "token_type"

    .line 1719
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mac_key"

    .line 1720
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "mac_algorithm"

    .line 1721
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_9e
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_9e} :catch_e0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 1728
    :goto_a1
    new-instance v5, Lcom/xiaomi/accountsdk/account/data/i;

    invoke-direct {v5}, Lcom/xiaomi/accountsdk/account/data/i;-><init>()V

    .line 1729
    invoke-virtual {v5, p0}, Lcom/xiaomi/accountsdk/account/data/i;->a(Ljava/lang/String;)V

    if-eqz v0, :cond_b6

    .line 1731
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v5, p0}, Lcom/xiaomi/accountsdk/account/data/i;->a(I)V

    .line 1733
    :cond_b6
    invoke-virtual {v5, v2}, Lcom/xiaomi/accountsdk/account/data/i;->b(Ljava/lang/String;)V

    .line 1734
    invoke-virtual {v5, v3}, Lcom/xiaomi/accountsdk/account/data/i;->c(Ljava/lang/String;)V

    .line 1735
    invoke-virtual {v5, v4}, Lcom/xiaomi/accountsdk/account/data/i;->d(Ljava/lang/String;)V

    .line 1736
    invoke-virtual {v5, p1}, Lcom/xiaomi/accountsdk/account/data/i;->e(Ljava/lang/String;)V

    .line 1737
    invoke-virtual {v5, v1}, Lcom/xiaomi/accountsdk/account/data/i;->f(Ljava/lang/String;)V

    return-object v5

    .line 1715
    :cond_c6
    :try_start_c6
    new-instance p0, Lcom/xiaomi/accountsdk/account/a/p;

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/account/a/p;-><init>()V

    throw p0

    .line 1700
    :cond_cc
    new-instance p0, Lcom/xiaomi/accountsdk/account/a/p;

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/account/a/p;-><init>()V

    throw p0

    .line 1698
    :cond_d2
    new-instance p0, Lcom/xiaomi/accountsdk/request/c;

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/c;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1693
    :cond_d8
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    const-string p1, "empty response"

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_e0
    .catch Lorg/json/JSONException; {:try_start_c6 .. :try_end_e0} :catch_e0

    :catch_e0
    move-exception p0

    .line 1724
    new-instance p1, Lcom/xiaomi/accountsdk/account/a/p;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/xiaomi/accountsdk/account/a/p;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1687
    :cond_eb
    new-instance p0, Lcom/xiaomi/accountsdk/account/a/p;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contentType error : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/account/a/p;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1673
    :cond_102
    new-instance p0, Ljava/io/IOException;

    const-string p1, "failed to get response to get Auth2 auth info"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1669
    :cond_10a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "response type is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/xiaomi/accountsdk/account/data/k;)Lcom/xiaomi/accountsdk/account/data/p;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/d;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/request/a;
        }
    .end annotation

    .line 1550
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1551
    sget-object v1, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;->a:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1552
    sget-object v1, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;->b:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 1553
    invoke-static {p0, v1, v0}, Lcom/xiaomi/accountsdk/account/XMPassport;->b(Lcom/xiaomi/accountsdk/account/data/k;Ljava/lang/String;Ljava/util/List;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;

    move-result-object v0

    .line 1554
    new-instance v1, Lcom/xiaomi/accountsdk/account/data/p;

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/k;->a()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lcom/xiaomi/accountsdk/account/data/p;-><init>(Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;)V

    return-object v1
.end method

.method public static a()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/k;
        }
    .end annotation

    .line 2884
    sget-object v0, Lcom/xiaomi/accountsdk/account/g;->ar:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v1, v2}, Lcom/xiaomi/accountsdk/request/s;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 2888
    invoke-static {v0}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;)Ljava/lang/String;

    move-result-object v1

    .line 2890
    :try_start_e
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "code"

    .line 2891
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2d

    const-string v0, "data"

    .line 2894
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2895
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "pwd"

    .line 2896
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2898
    :cond_2d
    new-instance v1, Lcom/xiaomi/accountsdk/request/k;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_37
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_37} :catch_37

    :catch_37
    move-exception v0

    const-string v1, "XMPassport"

    const-string v2, "JSON ERROR"

    .line 2900
    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/d;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2901
    new-instance v1, Lcom/xiaomi/accountsdk/request/k;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2886
    :cond_49
    new-instance v0, Lcom/xiaomi/accountsdk/request/k;

    const-string v1, "result content is null"

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/account/a/n;,
            Lcom/xiaomi/accountsdk/account/a/w;
        }
    .end annotation

    if-eqz p0, :cond_be

    .line 1000
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams;->a:Ljava/lang/String;

    .line 1001
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams;->b:Ljava/lang/String;

    .line 1002
    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams;->c:Ljava/lang/String;

    .line 1003
    iget-object v3, p0, Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams;->d:Ljava/lang/String;

    .line 1004
    iget-object v4, p0, Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams;->e:Ljava/lang/String;

    .line 1005
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams;->f:Ljava/lang/String;

    .line 1007
    new-instance v5, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v5}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v6, "email"

    .line 1008
    invoke-virtual {v5, v6, v0}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    const-string v5, "password"

    .line 1009
    invoke-virtual {v0, v5, v1}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    const-string v1, "_json"

    const-string v5, "true"

    .line 1010
    invoke-virtual {v0, v1, v5}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    const-string v1, "inputcode"

    .line 1011
    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    const-string v1, "region"

    .line 1012
    invoke-virtual {v0, v1, v4}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    const-string v1, "sid"

    .line 1013
    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p0

    const-string v0, "acceptLicense"

    const-string v1, "true"

    .line 1014
    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p0

    .line 1016
    new-instance v0, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v1, "ick"

    .line 1017
    invoke-virtual {v0, v1, v3}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    const/4 v1, 0x0

    .line 1018
    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/utils/k;Ljava/lang/String;)V

    .line 1019
    invoke-static {v0}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Ljava/util/Map;)V

    .line 1023
    :try_start_53
    sget-object v2, Lcom/xiaomi/accountsdk/account/g;->as:Ljava/lang/String;

    .line 1024
    invoke-static {v2, v4}, Lcom/xiaomi/accountsdk/account/XMPassport;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 1023
    invoke-static {v2, p0, v0, v3}, Lcom/xiaomi/accountsdk/request/s;->c(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p0
    :try_end_5e
    .catch Lcom/xiaomi/accountsdk/request/a; {:try_start_53 .. :try_end_5e} :catch_64
    .catch Lcom/xiaomi/accountsdk/request/c; {:try_start_53 .. :try_end_5e} :catch_5f

    goto :goto_69

    :catch_5f
    move-exception p0

    .line 1029
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/c;->printStackTrace()V

    goto :goto_68

    :catch_64
    move-exception p0

    .line 1027
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/a;->printStackTrace()V

    :goto_68
    move-object p0, v1

    :goto_69
    if-eqz p0, :cond_b6

    .line 1034
    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;)Ljava/lang/String;

    move-result-object p0

    .line 1036
    :try_start_6f
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "code"

    .line 1037
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    const-string v1, "description"

    .line 1038
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p0, :cond_9f

    const/16 v0, 0x61ad

    if-eq p0, v0, :cond_99

    const v0, 0x153d9

    if-eq p0, v0, :cond_91

    .line 1047
    new-instance v0, Lcom/xiaomi/accountsdk/request/k;

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/accountsdk/request/k;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1043
    :cond_91
    new-instance v0, Lcom/xiaomi/accountsdk/account/a/n;

    sget-object v2, Lcom/xiaomi/accountsdk/account/g;->E:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/xiaomi/accountsdk/account/a/n;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1045
    :cond_99
    new-instance p0, Lcom/xiaomi/accountsdk/account/a/w;

    invoke-direct {p0, v1}, Lcom/xiaomi/accountsdk/account/a/w;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9f
    const-string p0, "userId"

    .line 1041
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_a5
    .catch Lorg/json/JSONException; {:try_start_6f .. :try_end_a5} :catch_a6

    return-object p0

    :catch_a6
    move-exception p0

    const-string v0, "XMPassport"

    const-string v1, "json error"

    .line 1050
    invoke-static {v0, v1, p0}, Lcom/xiaomi/accountsdk/utils/d;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1051
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    const-string v0, "json error"

    invoke-direct {p0, v0}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1032
    :cond_b6
    new-instance p0, Ljava/io/IOException;

    const-string v0, "failed to register, no response"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 998
    :cond_be
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "email params should not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/xiaomi/accountsdk/account/data/SetPasswordParams;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/account/a/m;,
            Lcom/xiaomi/accountsdk/account/a/h;,
            Lcom/xiaomi/accountsdk/account/a/g;,
            Lcom/xiaomi/accountsdk/account/a/x;,
            Lcom/xiaomi/accountsdk/request/d;
        }
    .end annotation

    if-eqz p0, :cond_132

    .line 3171
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/SetPasswordParams;->b:Lcom/xiaomi/accountsdk/account/data/k;

    if-eqz v0, :cond_12a

    .line 3175
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 3176
    new-instance v2, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v2}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v4, "userId"

    iget-object v5, p0, Lcom/xiaomi/accountsdk/account/data/SetPasswordParams;->a:Ljava/lang/String;

    .line 3177
    invoke-virtual {v2, v4, v5}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v2

    const-string v4, "pwd"

    iget-object v5, p0, Lcom/xiaomi/accountsdk/account/data/SetPasswordParams;->c:Ljava/lang/String;

    .line 3178
    invoke-virtual {v2, v4, v5}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v2

    const-string v4, "passToken"

    iget-object v5, p0, Lcom/xiaomi/accountsdk/account/data/SetPasswordParams;->d:Ljava/lang/String;

    .line 3179
    invoke-virtual {v2, v4, v5}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v2

    const-string v4, "sid"

    iget-object v5, p0, Lcom/xiaomi/accountsdk/account/data/SetPasswordParams;->f:Ljava/lang/String;

    .line 3180
    invoke-virtual {v2, v4, v5}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v2

    const-string v4, "ticket"

    iget-object v5, p0, Lcom/xiaomi/accountsdk/account/data/SetPasswordParams;->e:Ljava/lang/String;

    .line 3181
    invoke-virtual {v2, v4, v5}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v2

    const-string v4, "transId"

    .line 3182
    invoke-virtual {v2, v4, v1}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v1

    .line 3183
    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/SetPasswordParams;->h:Lcom/xiaomi/accountsdk/account/data/j;

    if-eqz v2, :cond_6b

    const-string v4, "phone"

    .line 3185
    iget-object v5, v2, Lcom/xiaomi/accountsdk/account/data/j;->b:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v4

    const-string v5, "simId"

    iget-object v6, v2, Lcom/xiaomi/accountsdk/account/data/j;->c:Ljava/lang/String;

    .line 3186
    invoke-virtual {v4, v5, v6}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v4

    const-string v5, "vKey2"

    iget-object v6, v2, Lcom/xiaomi/accountsdk/account/data/j;->d:Ljava/lang/String;

    .line 3187
    invoke-virtual {v4, v5, v6}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v4

    const-string v5, "nonce"

    iget-object v2, v2, Lcom/xiaomi/accountsdk/account/data/j;->e:Ljava/lang/String;

    .line 3188
    invoke-virtual {v4, v5, v2}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    .line 3190
    :cond_6b
    invoke-static {v0}, Lcom/xiaomi/accountsdk/account/XMPassport;->d(Lcom/xiaomi/accountsdk/account/data/k;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v2

    .line 3191
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/SetPasswordParams;->g:Ljava/lang/String;

    invoke-static {v2, p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/utils/k;Ljava/lang/String;)V

    .line 3193
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/xiaomi/accountsdk/account/g;->k:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/safe/user/setPassword"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v4, 0x1

    .line 3195
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/k;->e()Ljava/lang/String;

    move-result-object v0

    .line 3193
    invoke-static {p0, v1, v2, v4, v0}, Lcom/xiaomi/accountsdk/request/r;->d(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p0

    if-eqz p0, :cond_122

    .line 3199
    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;)Ljava/lang/String;

    move-result-object p0

    .line 3201
    :try_start_96
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "code"

    .line 3202
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 3203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", desc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "description"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "XMPassport"

    .line 3204
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestSetPassword: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/xiaomi/accountsdk/utils/d;->g(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_10d

    const/16 v0, 0x272f

    if-eq p0, v0, :cond_107

    const/16 v0, 0x5345

    if-eq p0, v0, :cond_101

    const v0, 0x11173

    if-eq p0, v0, :cond_fb

    const v0, 0x1117c

    if-eq p0, v0, :cond_f5

    const v0, 0x1117e

    if-eq p0, v0, :cond_f5

    .line 3219
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    invoke-direct {p0, v1}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3215
    :cond_f5
    new-instance p0, Lcom/xiaomi/accountsdk/account/a/m;

    invoke-direct {p0, v1}, Lcom/xiaomi/accountsdk/account/a/m;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3210
    :cond_fb
    new-instance p0, Lcom/xiaomi/accountsdk/account/a/h;

    invoke-direct {p0, v1}, Lcom/xiaomi/accountsdk/account/a/h;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3212
    :cond_101
    new-instance v0, Lcom/xiaomi/accountsdk/account/a/g;

    invoke-direct {v0, p0, v1, v3}, Lcom/xiaomi/accountsdk/account/a/g;-><init>(ILjava/lang/String;Z)V

    throw v0

    .line 3217
    :cond_107
    new-instance p0, Lcom/xiaomi/accountsdk/account/a/x;

    invoke-direct {p0, v1}, Lcom/xiaomi/accountsdk/account/a/x;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10d
    const-string p0, "data"

    .line 3207
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "passToken"

    .line 3208
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_119
    .catch Lorg/json/JSONException; {:try_start_96 .. :try_end_119} :catch_11a

    return-object p0

    .line 3222
    :catch_11a
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    const-string v0, "result not json"

    invoke-direct {p0, v0}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3197
    :cond_122
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    const-string v0, "result content is null"

    invoke-direct {p0, v0}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3173
    :cond_12a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "passport info should not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3169
    :cond_132
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "set password params should not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/xiaomi/accountsdk/account/data/b;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_21

    .line 2339
    sget-object v0, Lcom/xiaomi/accountsdk/account/XMPassport$1;->b:[I

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/b;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_2a

    .line 2349
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid bindingType"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2347
    :pswitch_15
    sget-object p0, Lcom/xiaomi/accountsdk/account/g;->V:Ljava/lang/String;

    return-object p0

    .line 2345
    :pswitch_18
    sget-object p0, Lcom/xiaomi/accountsdk/account/g;->U:Ljava/lang/String;

    return-object p0

    .line 2343
    :pswitch_1b
    sget-object p0, Lcom/xiaomi/accountsdk/account/g;->X:Ljava/lang/String;

    return-object p0

    .line 2341
    :pswitch_1e
    sget-object p0, Lcom/xiaomi/accountsdk/account/g;->Y:Ljava/lang/String;

    return-object p0

    .line 2337
    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "bindingType is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
    .end packed-switch
.end method

.method private static a(Lcom/xiaomi/accountsdk/account/data/g;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_30

    .line 2091
    sget-object v0, Lcom/xiaomi/accountsdk/account/XMPassport$1;->a:[I

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/g;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_38

    .line 2111
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid identityAuthReason"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2109
    :pswitch_15
    sget-object p0, Lcom/xiaomi/accountsdk/account/g;->aj:Ljava/lang/String;

    return-object p0

    .line 2107
    :pswitch_18
    sget-object p0, Lcom/xiaomi/accountsdk/account/g;->ai:Ljava/lang/String;

    return-object p0

    .line 2105
    :pswitch_1b
    sget-object p0, Lcom/xiaomi/accountsdk/account/g;->ah:Ljava/lang/String;

    return-object p0

    .line 2103
    :pswitch_1e
    sget-object p0, Lcom/xiaomi/accountsdk/account/g;->ag:Ljava/lang/String;

    return-object p0

    .line 2101
    :pswitch_21
    sget-object p0, Lcom/xiaomi/accountsdk/account/g;->ad:Ljava/lang/String;

    return-object p0

    .line 2099
    :pswitch_24
    sget-object p0, Lcom/xiaomi/accountsdk/account/g;->ac:Ljava/lang/String;

    return-object p0

    .line 2097
    :pswitch_27
    sget-object p0, Lcom/xiaomi/accountsdk/account/g;->ab:Ljava/lang/String;

    return-object p0

    .line 2095
    :pswitch_2a
    sget-object p0, Lcom/xiaomi/accountsdk/account/g;->ae:Ljava/lang/String;

    return-object p0

    .line 2093
    :pswitch_2d
    sget-object p0, Lcom/xiaomi/accountsdk/account/g;->af:Ljava/lang/String;

    return-object p0

    .line 2089
    :cond_30
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "identityAuthReason is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
    .end packed-switch
.end method

.method public static a(Lcom/xiaomi/accountsdk/account/data/k;Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/d;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/account/a/h;
        }
    .end annotation

    if-eqz p0, :cond_26

    if-eqz p1, :cond_26

    const-string v0, "XMPassport"

    const-string v1, "requestUploadUserIcon start: "

    .line 1945
    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/d;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->c(Lcom/xiaomi/accountsdk/account/data/k;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "XMPassport"

    const-string v2, "uploadIconToServer start: "

    .line 1948
    invoke-static {v1, v2}, Lcom/xiaomi/accountsdk/utils/d;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    invoke-static {v0, p1}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "XMPassport"

    const-string v1, "commitUploadUserIcon start: "

    .line 1951
    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/d;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
    invoke-static {p0, p1}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/account/data/k;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1943
    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid parameter"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/xiaomi/accountsdk/account/data/k;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/d;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/account/a/s;,
            Lcom/xiaomi/accountsdk/account/a/i;
        }
    .end annotation

    if-eqz p0, :cond_d8

    .line 3127
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3128
    new-instance v1, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v2, "userId"

    .line 3129
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/k;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v1

    const-string v2, "sid"

    .line 3130
    invoke-virtual {v1, v2, p1}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p1

    const-string v1, "transId"

    .line 3131
    invoke-virtual {p1, v1, v0}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p1

    .line 3132
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/XMPassportUtil;->a()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/accountsdk/utils/k;->putAll(Ljava/util/Map;)V

    .line 3134
    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->d(Lcom/xiaomi/accountsdk/account/data/k;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    const/4 v1, 0x0

    .line 3135
    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/utils/k;Ljava/lang/String;)V

    .line 3137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/xiaomi/accountsdk/account/g;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/user/sendSetPasswordTicket"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 3138
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/k;->e()Ljava/lang/String;

    move-result-object p0

    .line 3137
    invoke-static {v1, p1, v0, v2, p0}, Lcom/xiaomi/accountsdk/request/r;->d(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p0

    if-eqz p0, :cond_d0

    .line 3142
    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;)Ljava/lang/String;

    move-result-object p0

    .line 3144
    :try_start_5d
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "code"

    .line 3145
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 3146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", desc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "description"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XMPassport"

    .line 3147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestSetPassword: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/accountsdk/utils/d;->g(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_bb

    const p1, 0x11179

    if-eq p0, p1, :cond_b5

    const p1, 0x11186

    if-eq p0, p1, :cond_af

    .line 3157
    new-instance p1, Lcom/xiaomi/accountsdk/request/k;

    invoke-direct {p1, p0, v0}, Lcom/xiaomi/accountsdk/request/k;-><init>(ILjava/lang/String;)V

    throw p1

    .line 3153
    :cond_af
    new-instance p0, Lcom/xiaomi/accountsdk/account/a/s;

    invoke-direct {p0, v0}, Lcom/xiaomi/accountsdk/account/a/s;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3155
    :cond_b5
    new-instance p0, Lcom/xiaomi/accountsdk/account/a/i;

    invoke-direct {p0, v0}, Lcom/xiaomi/accountsdk/account/a/i;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_bb
    const-string p0, "data"

    .line 3150
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "maskedPhone"

    .line 3151
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_c7
    .catch Lorg/json/JSONException; {:try_start_5d .. :try_end_c7} :catch_c8

    return-object p0

    .line 3160
    :catch_c8
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    const-string p1, "result not json"

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3140
    :cond_d0
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    const-string p1, "result content is null"

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3125
    :cond_d8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "passport info should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/xiaomi/accountsdk/account/data/k;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/d;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/account/a/m;,
            Lcom/xiaomi/accountsdk/account/a/f;,
            Lcom/xiaomi/accountsdk/account/a/x;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2330
    invoke-static/range {p0 .. p5}, Lcom/xiaomi/accountsdk/account/XMPassport;->b(Lcom/xiaomi/accountsdk/account/data/k;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p1

    .line 2331
    invoke-static {p2}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/account/data/b;)Ljava/lang/String;

    move-result-object p2

    .line 2332
    invoke-static {p0, p2, p1}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/account/data/k;Ljava/lang/String;Lcom/xiaomi/accountsdk/utils/k;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/xiaomi/accountsdk/account/data/k;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/g;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/d;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/request/a;
        }
    .end annotation

    .line 2043
    invoke-static {p2}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/account/data/g;)Ljava/lang/String;

    move-result-object p2

    .line 2044
    invoke-static {p0, p1, p2}, Lcom/xiaomi/accountsdk/account/XMPassport;->c(Lcom/xiaomi/accountsdk/account/data/k;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/xiaomi/accountsdk/account/data/k;Ljava/lang/String;Lcom/xiaomi/accountsdk/utils/k;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/accountsdk/account/data/k;",
            "Ljava/lang/String;",
            "Lcom/xiaomi/accountsdk/utils/k<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/d;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/account/a/m;,
            Lcom/xiaomi/accountsdk/account/a/f;,
            Lcom/xiaomi/accountsdk/account/a/x;
        }
    .end annotation

    if-eqz p0, :cond_ca

    .line 2380
    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->d(Lcom/xiaomi/accountsdk/account/data/k;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/k;->e()Ljava/lang/String;

    move-result-object p0

    .line 2379
    invoke-static {p1, p2, v0, v1, p0}, Lcom/xiaomi/accountsdk/request/r;->c(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;

    move-result-object p0

    if-eqz p0, :cond_c2

    const-string p1, "code"

    .line 2384
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "description"

    .line 2385
    invoke-virtual {p0, p2}, Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 2386
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_a3

    .line 2387
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_63

    const/16 p0, 0x4e37

    if-eq v0, p0, :cond_5d

    const p0, 0x11176

    if-eq v0, p0, :cond_84

    const p0, 0x11178

    if-eq v0, p0, :cond_84

    const p0, 0x1117e

    if-eq v0, p0, :cond_3e

    goto :goto_a3

    .line 2401
    :cond_3e
    new-instance p0, Lcom/xiaomi/accountsdk/account/a/m;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; description: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/account/a/m;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2403
    :cond_5d
    new-instance p0, Lcom/xiaomi/accountsdk/account/a/x;

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/account/a/x;-><init>()V

    throw p0

    :cond_63
    const-string v0, "data"

    .line 2389
    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 2390
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_84

    .line 2391
    check-cast p0, Ljava/util/Map;

    const-string p1, "address"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_7c

    .line 2395
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2393
    :cond_7c
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    const-string p1, "address is null"

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2399
    :cond_84
    new-instance p0, Lcom/xiaomi/accountsdk/account/a/f;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ;description: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/account/a/f;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2406
    :cond_a3
    :goto_a3
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; description: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2382
    :cond_c2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "failed to updateBindedPhoneOrEmail"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2377
    :cond_ca
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "passportInfo is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/xiaomi/accountsdk/account/data/k;Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/d;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/account/a/h;
        }
    .end annotation

    .line 2003
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2004
    new-instance v1, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v2, "userId"

    .line 2005
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/k;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v1

    const-string v2, "sid"

    .line 2006
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/k;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v1

    const-string v2, "transId"

    .line 2007
    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    const-string v1, "json"

    .line 2008
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v2, 0x2

    invoke-static {p1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p1

    .line 2009
    sget-object v0, Lcom/xiaomi/accountsdk/account/g;->z:Ljava/lang/String;

    .line 2010
    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->d(Lcom/xiaomi/accountsdk/account/data/k;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/k;->e()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    .line 2009
    invoke-static {v0, p1, v1, v2, p0}, Lcom/xiaomi/accountsdk/request/r;->c(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;

    move-result-object p0

    if-eqz p0, :cond_c2

    const-string p1, "code"

    .line 2014
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    const-string v0, "description"

    .line 2015
    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "XMPassport"

    .line 2016
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "commitUploadUserIcon failed, code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "; description: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/accountsdk/utils/d;->g(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_9f

    const p0, 0x1023c

    if-eq v1, p0, :cond_95

    .line 2032
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/accountsdk/request/k;-><init>(ILjava/lang/String;)V

    throw p0

    .line 2030
    :cond_95
    new-instance p0, Lcom/xiaomi/accountsdk/account/a/h;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/accountsdk/account/a/h;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_9f
    const-string p1, "data"

    .line 2020
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 2021
    instance-of p1, p0, Ljava/util/Map;

    if-eqz p1, :cond_c0

    .line 2022
    check-cast p0, Ljava/util/Map;

    const-string p1, "downloadUrl"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_b8

    .line 2026
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2024
    :cond_b8
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    const-string p1, "downloadUrl is null"

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c0
    const/4 p0, 0x0

    return-object p0

    .line 2012
    :cond_c2
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    const-string p1, "commitUploadUserIcon content is null"

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_19

    .line 1745
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->d()Ljava/lang/String;

    move-result-object p0

    const-string v0, "&&&START&&&"

    .line 1746
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "&&&START&&&"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_18
    return-object p0

    .line 1743
    :cond_19
    new-instance p0, Ljava/io/IOException;

    const-string v0, "failed to get response to check register verify code"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static a(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 642
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v1, "nonce"

    .line 644
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    .line 645
    invoke-static {p0, p0, v0, p1}, Lcom/xiaomi/accountsdk/utils/CloudCoder;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/k;
        }
    .end annotation

    .line 1170
    sget-object v0, Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;->a:Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;

    if-ne p1, v0, :cond_7

    const-string p1, "EM"

    goto :goto_9

    :cond_7
    const-string p1, "PH"

    .line 1171
    :goto_9
    new-instance v0, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v1, "type"

    .line 1172
    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p1

    const-string v0, "externalId"

    .line 1173
    invoke-virtual {p1, v0, p0}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p0

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 1176
    :try_start_1c
    sget-object v1, Lcom/xiaomi/accountsdk/account/g;->v:Ljava/lang/String;

    .line 1177
    invoke-static {v1, p0, v0, p1}, Lcom/xiaomi/accountsdk/request/s;->b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;

    move-result-object p0
    :try_end_22
    .catch Lcom/xiaomi/accountsdk/request/a; {:try_start_1c .. :try_end_22} :catch_28
    .catch Lcom/xiaomi/accountsdk/request/c; {:try_start_1c .. :try_end_22} :catch_23

    goto :goto_2d

    :catch_23
    move-exception p0

    .line 1181
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/c;->printStackTrace()V

    goto :goto_2c

    :catch_28
    move-exception p0

    .line 1179
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/a;->printStackTrace()V

    :goto_2c
    move-object p0, v0

    :goto_2d
    if-eqz p0, :cond_7f

    const-string v0, "code"

    .line 1187
    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1188
    sget-object v1, Lcom/xiaomi/accountsdk/account/XMPassport;->p:Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    const-string v0, "data"

    .line 1189
    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1190
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_56

    .line 1191
    check-cast v0, Ljava/util/Map;

    const-string v1, "userId"

    .line 1192
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 1194
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1198
    :cond_56
    new-instance v0, Lcom/xiaomi/accountsdk/request/k;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "reason"

    .line 1200
    invoke-virtual {p0, v3}, Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "description"

    .line 1201
    invoke-virtual {p0, v2}, Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, p1

    const/4 p1, 0x2

    const-string v2, "code"

    .line 1202
    invoke-virtual {p0, v2}, Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v1, p1

    const-string p0, "server error when getting user id, reason:%s, description:%s, code:%s"

    .line 1198
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1184
    :cond_7f
    new-instance p0, Ljava/io/IOException;

    const-string p1, "failed to get response when getting user id"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/k;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 939
    new-instance v0, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v1, "phone"

    .line 941
    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p0

    const-string v0, "password"

    .line 942
    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p0

    const-string p1, "ticket"

    .line 943
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p0

    .line 944
    new-instance p1, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {p1}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const/4 p2, 0x0

    .line 945
    invoke-static {p1, p2}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/utils/k;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 949
    :try_start_21
    sget-object v1, Lcom/xiaomi/accountsdk/account/g;->B:Ljava/lang/String;

    .line 950
    invoke-static {v1, p0, p1, v0}, Lcom/xiaomi/accountsdk/request/s;->d(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;

    move-result-object p0
    :try_end_27
    .catch Lcom/xiaomi/accountsdk/request/a; {:try_start_21 .. :try_end_27} :catch_2d
    .catch Lcom/xiaomi/accountsdk/request/c; {:try_start_21 .. :try_end_27} :catch_28

    goto :goto_32

    :catch_28
    move-exception p0

    .line 954
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/c;->printStackTrace()V

    goto :goto_31

    :catch_2d
    move-exception p0

    .line 952
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/a;->printStackTrace()V

    :goto_31
    move-object p0, p2

    :goto_32
    if-eqz p0, :cond_80

    const-string p1, "code"

    .line 959
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 960
    sget-object p2, Lcom/xiaomi/accountsdk/account/XMPassport;->p:Ljava/lang/Integer;

    invoke-virtual {p2, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5b

    const-string p2, "data"

    .line 961
    invoke-virtual {p0, p2}, Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 962
    instance-of v1, p2, Ljava/util/Map;

    if-eqz v1, :cond_5b

    .line 963
    check-cast p2, Ljava/util/Map;

    const-string v1, "userId"

    .line 964
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_5b

    .line 966
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 970
    :cond_5b
    sget-boolean p2, Lcom/xiaomi/accountsdk/account/XMPassport;->a:Z

    if-eqz p2, :cond_78

    const/4 p2, 0x2

    .line 971
    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, p2, v1

    const-string p1, "description"

    .line 973
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, p2, v0

    const-string p0, "register failed, code: %s, description: %s"

    .line 972
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "XMPassport"

    .line 971
    invoke-static {p1, p0}, Lcom/xiaomi/accountsdk/utils/d;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    :cond_78
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    const-string p1, "failed to register due to invalid response from server"

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0

    .line 957
    :cond_80
    new-instance p0, Ljava/io/IOException;

    const-string p1, "failed to register, no response"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/d;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/account/a/h;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1933
    new-instance v6, Lcom/xiaomi/accountsdk/account/data/k;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/accountsdk/account/data/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, p5}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/account/data/k;Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/xiaomi/accountsdk/account/data/k;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/accountsdk/account/data/k;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/request/d;,
            Lcom/xiaomi/accountsdk/request/k;
        }
    .end annotation

    .line 1810
    invoke-static {p0, p1}, Lcom/xiaomi/accountsdk/account/b;->a(Lcom/xiaomi/accountsdk/account/data/k;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/xiaomi/accountsdk/account/data/k;Ljava/lang/String;Ljava/util/List;)Ljava/util/HashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/accountsdk/account/data/k;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/d;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/c;
        }
    .end annotation

    .line 1800
    invoke-static {p0, p1, p2}, Lcom/xiaomi/accountsdk/account/b;->a(Lcom/xiaomi/accountsdk/account/data/k;Ljava/lang/String;Ljava/util/List;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/ArrayList;)Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/accountsdk/account/data/d;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/k;
        }
    .end annotation

    .line 2561
    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/b;->a(Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/util/List;)Lorg/json/JSONArray;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/accountsdk/account/data/n;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .line 2116
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 2117
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/accountsdk/account/data/n;

    if-nez v1, :cond_18

    goto :goto_9

    .line 2121
    :cond_18
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_1d
    const-string v3, "q"

    .line 2123
    iget-object v4, v1, Lcom/xiaomi/accountsdk/account/data/n;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "a"

    .line 2124
    iget-object v1, v1, Lcom/xiaomi/accountsdk/account/data/n;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_2b} :catch_2c

    goto :goto_34

    :catch_2c
    move-exception v1

    const-string v3, "XMPassport"

    const-string v4, "convertSQsToJsonArray"

    .line 2126
    invoke-static {v3, v4, v1}, Lcom/xiaomi/accountsdk/utils/d;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2128
    :goto_34
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_9

    :cond_38
    return-object v0
.end method

.method private static a(Ljava/lang/String;Landroid/graphics/Bitmap;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/k;
        }
    .end annotation

    .line 1986
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1987
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x50

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1988
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v0, "userfile"

    const-string v1, "icon.jpg"

    .line 1989
    invoke-static {p0, p1, v0, v1}, Lcom/xiaomi/accountsdk/request/t;->a(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1991
    :try_start_1d
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_31

    .line 1992
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_28} :catch_29

    return-object p1

    :catch_29
    move-exception p1

    const-string v0, "XMPassport"

    const-string v1, "uploadIconToServer error"

    .line 1995
    invoke-static {v0, v1, p1}, Lcom/xiaomi/accountsdk/utils/d;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1997
    :cond_31
    new-instance p1, Lcom/xiaomi/accountsdk/request/k;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "upload error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/d;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/account/a/f;,
            Lcom/xiaomi/accountsdk/account/a/n;,
            Lcom/xiaomi/accountsdk/account/a/w;,
            Lcom/xiaomi/accountsdk/account/a/s;
        }
    .end annotation

    if-eqz p0, :cond_df

    .line 2194
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams;->a:Lcom/xiaomi/accountsdk/account/data/k;

    if-eqz v0, :cond_df

    .line 2197
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams;->a:Lcom/xiaomi/accountsdk/account/data/k;

    .line 2198
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams;->c:Ljava/lang/String;

    .line 2199
    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams;->d:Ljava/lang/String;

    .line 2200
    iget-object v3, p0, Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams;->b:Ljava/lang/String;

    .line 2201
    iget-object v4, p0, Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams;->e:Ljava/lang/String;

    .line 2202
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams;->f:Ljava/lang/String;

    .line 2203
    new-instance v5, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v5}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v6, "userId"

    .line 2204
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/k;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v5

    const-string v6, "address"

    .line 2205
    invoke-virtual {v5, v6, v1}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v1

    const-string v5, "sid"

    .line 2206
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/k;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v1

    const-string v5, "deviceId"

    .line 2207
    invoke-virtual {v1, v5, v2}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v1

    const-string v2, "userSpaceId"

    .line 2208
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/y;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v1

    const-string v2, "authST"

    .line 2209
    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v1

    const-string v2, "icode"

    .line 2210
    invoke-virtual {v1, v2, v4}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v1

    .line 2211
    invoke-static {v0}, Lcom/xiaomi/accountsdk/account/XMPassport;->d(Lcom/xiaomi/accountsdk/account/data/k;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v2

    const-string v3, "ick"

    .line 2212
    invoke-virtual {v2, v3, p0}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    .line 2213
    sget-object p0, Lcom/xiaomi/accountsdk/account/g;->Z:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/k;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v2, v3, v0}, Lcom/xiaomi/accountsdk/request/r;->c(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;

    move-result-object p0

    if-eqz p0, :cond_d7

    const-string v0, "code"

    .line 2217
    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const-string v1, "description"

    .line 2218
    invoke-virtual {p0, v1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ;description: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2220
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_d6

    const/16 v4, 0x4e3f

    if-eq v3, v4, :cond_c4

    const v4, 0x11176

    if-eq v3, v4, :cond_be

    const v4, 0x1117d

    if-eq v3, v4, :cond_b8

    const v4, 0x153d9

    if-eq v3, v4, :cond_c4

    packed-switch v3, :pswitch_data_e8

    .line 2235
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, v2}, Lcom/xiaomi/accountsdk/request/k;-><init>(ILjava/lang/String;)V

    throw p0

    .line 2233
    :pswitch_b2
    new-instance p0, Lcom/xiaomi/accountsdk/account/a/s;

    invoke-direct {p0, v2}, Lcom/xiaomi/accountsdk/account/a/s;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2225
    :cond_b8
    :pswitch_b8
    new-instance p0, Lcom/xiaomi/accountsdk/account/a/w;

    invoke-direct {p0, v2}, Lcom/xiaomi/accountsdk/account/a/w;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2227
    :cond_be
    new-instance p0, Lcom/xiaomi/accountsdk/account/a/f;

    invoke-direct {p0, v2}, Lcom/xiaomi/accountsdk/account/a/f;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c4
    const-string v2, "info"

    .line 2230
    invoke-virtual {p0, v2}, Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 2231
    new-instance v2, Lcom/xiaomi/accountsdk/account/a/n;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v2, v0, v1, p0}, Lcom/xiaomi/accountsdk/account/a/n;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v2

    :cond_d6
    return-void

    .line 2215
    :cond_d7
    new-instance p0, Ljava/io/IOException;

    const-string v0, "failed to checkAvailabilityOfBindingEmail"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2195
    :cond_df
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "params should not be null!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_e8
    .packed-switch 0x11185
        :pswitch_b8
        :pswitch_b2
    .end packed-switch
.end method

.method public static a(Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/account/a/n;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/account/a/u;
        }
    .end annotation

    if-eqz p0, :cond_89

    .line 1252
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;->a:Ljava/lang/String;

    .line 1253
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;->e:Ljava/lang/String;

    .line 1254
    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;->i:Ljava/lang/String;

    .line 1255
    iget-object v3, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;->g:Ljava/lang/String;

    .line 1256
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;->h:Ljava/lang/String;

    .line 1258
    new-instance v4, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v4}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v5, "phone"

    .line 1260
    invoke-virtual {v4, v5, v0}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    const-string v4, "icode"

    .line 1261
    invoke-virtual {v0, v4, v3}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    const-string v3, "region"

    .line 1262
    invoke-virtual {v0, v3, v2}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    .line 1263
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/XMPassportUtil;->a()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaomi/accountsdk/utils/k;->putAll(Ljava/util/Map;)V

    .line 1264
    new-instance v3, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v3}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v4, "ick"

    .line 1265
    invoke-virtual {v3, v4, p0}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    .line 1267
    invoke-static {v3, v1}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/utils/k;Ljava/lang/String;)V

    .line 1269
    sget-object p0, Lcom/xiaomi/accountsdk/account/g;->G:Ljava/lang/String;

    .line 1270
    invoke-static {p0, v2}, Lcom/xiaomi/accountsdk/account/XMPassport;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {p0, v0, v3, v1}, Lcom/xiaomi/accountsdk/request/s;->c(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p0

    .line 1273
    :try_start_42
    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;)Ljava/lang/String;

    move-result-object p0

    .line 1274
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "code"

    .line 1275
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    const-string v1, "description"

    .line 1276
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p0, :cond_7f

    const/16 v2, 0x4e3f

    if-eq p0, v2, :cond_73

    const v2, 0x11186

    if-eq p0, v2, :cond_6d

    const v2, 0x153d9

    if-eq p0, v2, :cond_73

    .line 1286
    new-instance v0, Lcom/xiaomi/accountsdk/request/k;

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/accountsdk/request/k;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1284
    :cond_6d
    new-instance p0, Lcom/xiaomi/accountsdk/account/a/u;

    invoke-direct {p0, v1}, Lcom/xiaomi/accountsdk/account/a/u;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1282
    :cond_73
    new-instance v2, Lcom/xiaomi/accountsdk/account/a/n;

    const-string v3, "info"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p0, v1, v0}, Lcom/xiaomi/accountsdk/account/a/n;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v2
    :try_end_7f
    .catch Lorg/json/JSONException; {:try_start_42 .. :try_end_7f} :catch_80

    :cond_7f
    return-void

    :catch_80
    move-exception p0

    .line 1289
    new-instance v0, Lcom/xiaomi/accountsdk/request/k;

    const-string v1, "JSON error"

    invoke-direct {v0, v1, p0}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1250
    :cond_89
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "send phone reg ticket params should not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/xiaomi/accountsdk/account/data/k;Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/account/a/h;,
            Lcom/xiaomi/accountsdk/request/d;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;
        }
    .end annotation

    if-eqz p0, :cond_45

    if-eqz p1, :cond_45

    .line 2631
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2632
    new-instance v1, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v2, "userId"

    .line 2633
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/k;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v1

    const-string v2, "education"

    iget-object p1, p1, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->h:Ljava/lang/String;

    .line 2634
    invoke-virtual {v1, v2, p1}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p1

    const-string v1, "sid"

    .line 2635
    invoke-virtual {p1, v1, p2}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p1

    const-string p2, "transId"

    .line 2636
    invoke-virtual {p1, p2, v0}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p1

    .line 2637
    sget-object p2, Lcom/xiaomi/accountsdk/account/g;->ap:Ljava/lang/String;

    .line 2639
    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->d(Lcom/xiaomi/accountsdk/account/data/k;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    const/4 v1, 0x1

    .line 2641
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/k;->e()Ljava/lang/String;

    move-result-object p0

    .line 2637
    invoke-static {p2, p1, v0, v1, p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)V

    return-void

    .line 2629
    :cond_45
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid params"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/xiaomi/accountsdk/account/data/k;Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/account/a/h;,
            Lcom/xiaomi/accountsdk/request/d;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;
        }
    .end annotation

    if-eqz p0, :cond_45

    if-eqz p1, :cond_45

    .line 2657
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2658
    new-instance v1, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v2, "userId"

    .line 2659
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/k;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v1

    const-string v2, "income"

    iget-object p1, p1, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;->g:Ljava/lang/String;

    .line 2660
    invoke-virtual {v1, v2, p1}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p1

    const-string v1, "sid"

    .line 2661
    invoke-virtual {p1, v1, p2}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p1

    const-string p2, "transId"

    .line 2662
    invoke-virtual {p1, p2, v0}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p1

    .line 2663
    sget-object p2, Lcom/xiaomi/accountsdk/account/g;->aq:Ljava/lang/String;

    .line 2665
    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->d(Lcom/xiaomi/accountsdk/account/data/k;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    const/4 v1, 0x1

    .line 2667
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/k;->e()Ljava/lang/String;

    move-result-object p0

    .line 2663
    invoke-static {p2, p1, v0, v1, p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)V

    return-void

    .line 2655
    :cond_45
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid params"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/xiaomi/accountsdk/account/data/k;Lcom/xiaomi/accountsdk/account/data/q;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/d;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/account/a/h;
        }
    .end annotation

    if-eqz p0, :cond_f6

    if-eqz p1, :cond_f6

    .line 1892
    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/data/q;->c()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 1894
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1895
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    :cond_1b
    move-object v0, v1

    .line 1897
    :goto_1c
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0xf

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1898
    new-instance v3, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v3}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v4, "userId"

    .line 1899
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/k;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v3

    const-string v4, "sid"

    .line 1900
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/k;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v3

    const-string v4, "transId"

    .line 1901
    invoke-virtual {v3, v4, v2}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v2

    const-string v3, "userName"

    .line 1902
    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/data/q;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v2

    const-string v3, "birthday"

    .line 1903
    invoke-virtual {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    const-string v2, "gender"

    .line 1904
    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/data/q;->b()Lcom/xiaomi/accountsdk/account/data/f;

    move-result-object v3

    if-eqz v3, :cond_6a

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/data/q;->b()Lcom/xiaomi/accountsdk/account/data/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/data/f;->a()Ljava/lang/String;

    move-result-object v1

    :cond_6a
    invoke-virtual {v0, v2, v1}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p1

    .line 1905
    sget-object v0, Lcom/xiaomi/accountsdk/account/g;->Q:Ljava/lang/String;

    .line 1906
    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->d(Lcom/xiaomi/accountsdk/account/data/k;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/k;->e()Ljava/lang/String;

    move-result-object p0

    .line 1905
    invoke-static {v0, p1, v1, v2, p0}, Lcom/xiaomi/accountsdk/request/r;->c(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;

    move-result-object p0

    if-eqz p0, :cond_ee

    const-string p1, "code"

    .line 1910
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 1911
    sget-object v0, Lcom/xiaomi/accountsdk/account/XMPassport;->p:Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    return-void

    :cond_90
    const-string v0, "description"

    .line 1914
    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 1915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", desc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XMPassport"

    .line 1916
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to upload xiaomi user info, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/accountsdk/utils/d;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x2721

    if-eq v1, v2, :cond_e4

    const v2, 0x1023c

    if-eq v1, v2, :cond_da

    .line 1923
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    invoke-direct {p0, v0}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1921
    :cond_da
    new-instance v0, Lcom/xiaomi/accountsdk/account/a/h;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v0, p1, p0}, Lcom/xiaomi/accountsdk/account/a/h;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1919
    :cond_e4
    new-instance v0, Lcom/xiaomi/accountsdk/account/a/h;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v0, p1, p0}, Lcom/xiaomi/accountsdk/account/a/h;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1908
    :cond_ee
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    const-string p1, "failed to upload xiaomi user profile"

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1889
    :cond_f6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid parameter"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/xiaomi/accountsdk/account/data/k;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/b;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/d;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/account/a/f;,
            Lcom/xiaomi/accountsdk/account/a/u;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p2, :cond_11

    .line 2286
    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/account/data/b;->a()Z

    move-result p2

    if-eqz p2, :cond_b

    sget-object p2, Lcom/xiaomi/accountsdk/account/g;->S:Ljava/lang/String;

    goto :goto_d

    :cond_b
    sget-object p2, Lcom/xiaomi/accountsdk/account/g;->T:Ljava/lang/String;

    .line 2287
    :goto_d
    invoke-static {p0, p1, p2}, Lcom/xiaomi/accountsdk/account/XMPassport;->d(Lcom/xiaomi/accountsdk/account/data/k;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2283
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "type is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/xiaomi/accountsdk/account/data/k;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/d;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/account/a/f;,
            Lcom/xiaomi/accountsdk/account/a/c;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_c1

    .line 2420
    new-instance v0, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v1, "userId"

    .line 2421
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    const-string v1, "sid"

    .line 2422
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/k;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    const-string v1, "address"

    .line 2423
    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p1

    const-string v0, "authST"

    .line 2424
    invoke-virtual {p1, v0, p2}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p1

    .line 2425
    sget-object p2, Lcom/xiaomi/accountsdk/account/g;->W:Ljava/lang/String;

    .line 2426
    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->d(Lcom/xiaomi/accountsdk/account/data/k;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/k;->e()Ljava/lang/String;

    move-result-object p0

    .line 2425
    invoke-static {p2, p1, v0, v1, p0}, Lcom/xiaomi/accountsdk/request/r;->c(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;

    move-result-object p0

    if-eqz p0, :cond_b9

    const-string p1, "code"

    .line 2430
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "description"

    .line 2431
    invoke-virtual {p0, p2}, Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 2432
    instance-of p2, p1, Ljava/lang/Integer;

    if-eqz p2, :cond_9a

    .line 2433
    move-object p2, p1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eqz p2, :cond_99

    const/16 v0, 0x61b1

    if-eq p2, v0, :cond_7a

    const v0, 0x11178

    if-eq p2, v0, :cond_5b

    goto :goto_9a

    .line 2437
    :cond_5b
    new-instance p2, Lcom/xiaomi/accountsdk/account/a/f;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ;description: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/xiaomi/accountsdk/account/a/f;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2439
    :cond_7a
    new-instance p2, Lcom/xiaomi/accountsdk/account/a/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ;description: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/xiaomi/accountsdk/account/a/c;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_99
    return-void

    .line 2442
    :cond_9a
    :goto_9a
    new-instance p2, Lcom/xiaomi/accountsdk/request/k;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; description: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2428
    :cond_b9
    new-instance p0, Ljava/io/IOException;

    const-string p1, "failed to deleteBindedPhone"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2418
    :cond_c1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "passportInfo is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/xiaomi/accountsdk/account/data/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/d;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/account/a/n;,
            Lcom/xiaomi/accountsdk/account/a/x;,
            Lcom/xiaomi/accountsdk/account/a/h;,
            Lcom/xiaomi/accountsdk/account/a/g;
        }
    .end annotation

    if-eqz p0, :cond_ba

    .line 2499
    new-instance v0, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v1, "userId"

    .line 2500
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    const-string v1, "oldPassword"

    .line 2501
    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p1

    const-string v0, "password"

    .line 2502
    invoke-virtual {p1, v0, p2}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p1

    const-string p2, "icode"

    .line 2503
    invoke-virtual {p1, p2, p3}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p1

    .line 2504
    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->d(Lcom/xiaomi/accountsdk/account/data/k;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p2

    const-string p3, "ick"

    .line 2505
    invoke-virtual {p2, p3, p4}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    .line 2506
    sget-object p3, Lcom/xiaomi/accountsdk/account/g;->am:Ljava/lang/String;

    .line 2507
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/k;->e()Ljava/lang/String;

    move-result-object p0

    const/4 p4, 0x1

    .line 2506
    invoke-static {p3, p1, p2, p4, p0}, Lcom/xiaomi/accountsdk/request/r;->c(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;

    move-result-object p0

    if-eqz p0, :cond_b2

    const-string p1, "code"

    .line 2511
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "description"

    .line 2512
    invoke-virtual {p0, p2}, Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 2513
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "code: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ;description: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    if-eqz p1, :cond_b1

    const/16 v0, 0x2721

    if-eq p1, v0, :cond_ab

    const/16 v0, 0x4e37

    if-eq p1, v0, :cond_a5

    const/16 v0, 0x4e3f

    if-eq p1, v0, :cond_97

    const v0, 0x11171

    if-eq p1, v0, :cond_89

    const p4, 0x11173

    if-eq p1, p4, :cond_ab

    const p3, 0x153d9

    if-eq p1, p3, :cond_97

    .line 2529
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/accountsdk/request/k;-><init>(ILjava/lang/String;)V

    throw p0

    .line 2527
    :cond_89
    new-instance p0, Lcom/xiaomi/accountsdk/account/a/g;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1, p3, p4}, Lcom/xiaomi/accountsdk/account/a/g;-><init>(ILjava/lang/String;Z)V

    throw p0

    :cond_97
    const-string p3, "info"

    .line 2519
    invoke-virtual {p0, p3}, Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 2520
    new-instance p3, Lcom/xiaomi/accountsdk/account/a/n;

    invoke-direct {p3, p1, p2, p0}, Lcom/xiaomi/accountsdk/account/a/n;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw p3

    .line 2522
    :cond_a5
    new-instance p0, Lcom/xiaomi/accountsdk/account/a/x;

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/account/a/x;-><init>()V

    throw p0

    .line 2525
    :cond_ab
    new-instance p0, Lcom/xiaomi/accountsdk/account/a/h;

    invoke-direct {p0, p3}, Lcom/xiaomi/accountsdk/account/a/h;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b1
    return-void

    .line 2509
    :cond_b2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "failed to changePassword"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2497
    :cond_ba
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "passportInfo is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/xiaomi/accountsdk/account/data/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/d;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/account/a/f;,
            Lcom/xiaomi/accountsdk/account/a/n;,
            Lcom/xiaomi/accountsdk/account/a/w;,
            Lcom/xiaomi/accountsdk/account/a/s;
        }
    .end annotation

    if-eqz p0, :cond_27

    .line 2181
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams$Builder;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams$Builder;-><init>()V

    .line 2182
    invoke-virtual {v0, p0}, Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams$Builder;->a(Lcom/xiaomi/accountsdk/account/data/k;)Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams$Builder;

    move-result-object p0

    .line 2183
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams$Builder;->b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams$Builder;

    move-result-object p0

    .line 2184
    invoke-static {p3}, Lcom/xiaomi/accountsdk/utils/CloudCoder;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams$Builder;->c(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams$Builder;

    move-result-object p0

    .line 2185
    invoke-virtual {p0, p2}, Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams$Builder;->a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams$Builder;

    move-result-object p0

    .line 2186
    invoke-virtual {p0, p4, p5}, Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams$Builder;

    move-result-object p0

    .line 2187
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams$Builder;->a()Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams;

    move-result-object p0

    .line 2188
    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams;)V

    return-void

    .line 2179
    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "passportInfo is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/xiaomi/accountsdk/account/data/k;Ljava/util/List;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/accountsdk/account/data/k;",
            "Ljava/util/List<",
            "Lcom/xiaomi/accountsdk/account/data/n;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/d;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/account/a/h;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_b0

    if-eqz p1, :cond_b0

    .line 2144
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_b0

    .line 2147
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p1

    .line 2148
    new-instance v0, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v1, "userId"

    .line 2149
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    const-string v1, "questions"

    if-eqz p1, :cond_26

    .line 2150
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_27

    :cond_26
    const/4 p1, 0x0

    :goto_27
    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p1

    const-string v0, "sid"

    .line 2151
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/k;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p1

    const-string v0, "authST"

    .line 2152
    invoke-virtual {p1, v0, p2}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p1

    .line 2153
    sget-object p2, Lcom/xiaomi/accountsdk/account/g;->aa:Ljava/lang/String;

    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->d(Lcom/xiaomi/accountsdk/account/data/k;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/k;->e()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p1, v0, v1, p0}, Lcom/xiaomi/accountsdk/request/r;->c(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;

    move-result-object p0

    if-eqz p0, :cond_a8

    const-string p1, "code"

    .line 2157
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "description"

    .line 2158
    invoke-virtual {p0, p2}, Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 2159
    instance-of p2, p1, Ljava/lang/Integer;

    if-eqz p2, :cond_89

    .line 2160
    move-object p2, p1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eqz p2, :cond_88

    packed-switch p2, :pswitch_data_b8

    goto :goto_89

    .line 2165
    :pswitch_69
    new-instance p2, Lcom/xiaomi/accountsdk/account/a/h;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ;description: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/xiaomi/accountsdk/account/a/h;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_88
    return-void

    .line 2168
    :cond_89
    :goto_89
    new-instance p2, Lcom/xiaomi/accountsdk/request/k;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ;description: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2155
    :cond_a8
    new-instance p0, Ljava/io/IOException;

    const-string p1, "failed to setSecurityQuestions"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2145
    :cond_b0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid param"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_b8
    .packed-switch 0x2720
        :pswitch_69
        :pswitch_69
    .end packed-switch
.end method

.method private static a(Lcom/xiaomi/accountsdk/utils/k;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/accountsdk/utils/k<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_20

    .line 3290
    invoke-static {}, Lcom/xiaomi/accountsdk/account/h;->e()Landroid/app/Application;

    .line 3291
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_10

    :cond_c
    invoke-static {}, Lcom/xiaomi/accountsdk/account/XMPassport;->b()Ljava/lang/String;

    move-result-object p1

    :goto_10
    const-string v0, "deviceId"

    .line 3292
    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p0

    const-string p1, "userSpaceId"

    .line 3293
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/y;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    return-void

    .line 3288
    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "cookie params should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/xiaomi/accountsdk/utils/k;[Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/accountsdk/utils/k<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1f

    if-nez p0, :cond_5

    goto :goto_1f

    .line 1389
    :cond_5
    :try_start_5
    invoke-static {p1}, Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils;->a([Ljava/lang/String;)Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils$EncryptResult;

    move-result-object p1

    const-string v0, "env"

    .line 1390
    iget-object v1, p1, Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils$EncryptResult;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    const-string v0, "envKey"

    .line 1391
    iget-object p1, p1, Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils$EncryptResult;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;
    :try_end_17
    .catch Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils$EncryptException; {:try_start_5 .. :try_end_17} :catch_18

    goto :goto_1e

    :catch_18
    move-exception p0

    const-string p1, "XMPassport"

    .line 1393
    invoke-static {p1, p0}, Lcom/xiaomi/accountsdk/utils/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1e
    return-void

    :cond_1f
    :goto_1f
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/f;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/d;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/account/a/h;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    .line 1864
    invoke-static/range {v0 .. v7}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Lcom/xiaomi/accountsdk/account/data/f;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Lcom/xiaomi/accountsdk/account/data/f;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/d;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/account/a/h;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1874
    new-instance v6, Lcom/xiaomi/accountsdk/account/data/k;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/accountsdk/account/data/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/xiaomi/accountsdk/account/data/q;

    invoke-direct {p1, p0, p5, p6, p7}, Lcom/xiaomi/accountsdk/account/data/q;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Lcom/xiaomi/accountsdk/account/data/f;)V

    invoke-static {v6, p1}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/account/data/k;Lcom/xiaomi/accountsdk/account/data/q;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/d;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/account/a/h;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 1851
    invoke-static/range {v0 .. v7}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Lcom/xiaomi/accountsdk/account/data/f;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/d;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/account/a/h;
        }
    .end annotation

    .line 2674
    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaomi/accountsdk/request/r;->c(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;

    move-result-object p0

    if-eqz p0, :cond_52

    const-string p1, "code"

    .line 2682
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "description"

    .line 2683
    invoke-virtual {p0, p2}, Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 2684
    instance-of p2, p1, Ljava/lang/Integer;

    if-eqz p2, :cond_33

    .line 2685
    move-object p2, p1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eqz p2, :cond_32

    packed-switch p2, :pswitch_data_5a

    goto :goto_33

    .line 2690
    :pswitch_23
    new-instance p1, Lcom/xiaomi/accountsdk/account/a/h;

    if-eqz p0, :cond_2c

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2e

    :cond_2c
    const-string p0, "invalid params"

    :goto_2e
    invoke-direct {p1, p0}, Lcom/xiaomi/accountsdk/account/a/h;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_32
    return-void

    .line 2693
    :cond_33
    :goto_33
    new-instance p2, Lcom/xiaomi/accountsdk/request/k;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "code: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "description: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2680
    :cond_52
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    const-string p1, "invalid response content"

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_5a
    .packed-switch 0x2720
        :pswitch_23
        :pswitch_23
    .end packed-switch
.end method

.method private static a(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3301
    new-instance v0, Lcom/xiaomi/passport/utils/a;

    invoke-direct {v0}, Lcom/xiaomi/passport/utils/a;-><init>()V

    .line 3302
    invoke-virtual {v0}, Lcom/xiaomi/passport/utils/a;->b()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 3303
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_14

    .line 3304
    invoke-interface {p0, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_14
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/k;
        }
    .end annotation

    .line 1155
    sget-object p0, Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;->b:Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;

    invoke-static {p1, p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Ljava/lang/String;Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "1"

    .line 1156
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_10

    return p2

    :cond_10
    const-string p1, "-1"

    .line 1158
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1a

    return v0

    .line 1161
    :cond_1a
    new-instance p1, Lcom/xiaomi/accountsdk/request/k;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/xiaomi/accountsdk/account/g;->v:Ljava/lang/String;

    aput-object v2, v1, p2

    aput-object p0, v1, v0

    const-string p0, "url %s should only return 1 or -1 as user id, but actually return %s"

    .line 1162
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Lcom/xiaomi/accountsdk/account/data/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/d;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/account/a/f;,
            Lcom/xiaomi/accountsdk/account/a/n;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_9c

    .line 2249
    new-instance v0, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v1, "userId"

    .line 2250
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    const-string v1, "address"

    .line 2251
    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p1

    const-string v0, "icode"

    .line 2252
    invoke-virtual {p1, v0, p2}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p1

    .line 2253
    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->d(Lcom/xiaomi/accountsdk/account/data/k;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p2

    const-string v0, "ick"

    .line 2254
    invoke-virtual {p2, v0, p3}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    .line 2255
    sget-object p3, Lcom/xiaomi/accountsdk/account/g;->R:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/k;->e()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p3, p1, p2, v0, p0}, Lcom/xiaomi/accountsdk/request/r;->c(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;

    move-result-object p0

    if-eqz p0, :cond_94

    const-string p1, "code"

    .line 2259
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "description"

    .line 2260
    invoke-virtual {p0, p2}, Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 2261
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eqz p2, :cond_93

    const p3, 0x11176

    if-eq p2, p3, :cond_74

    const p3, 0x1117d

    if-eq p2, p3, :cond_72

    const p3, 0x11185

    if-eq p2, p3, :cond_72

    const p3, 0x153d9

    if-eq p2, p3, :cond_6b

    .line 2272
    new-instance p2, Lcom/xiaomi/accountsdk/request/k;

    invoke-direct {p2, p1, p0}, Lcom/xiaomi/accountsdk/request/k;-><init>(ILjava/lang/String;)V

    throw p2

    .line 2270
    :cond_6b
    new-instance p2, Lcom/xiaomi/accountsdk/account/a/n;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p0, p3}, Lcom/xiaomi/accountsdk/account/a/n;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw p2

    :cond_72
    const/4 p0, 0x0

    return p0

    .line 2268
    :cond_74
    new-instance p2, Lcom/xiaomi/accountsdk/account/a/f;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "code: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ;description: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/xiaomi/accountsdk/account/a/f;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_93
    return v0

    .line 2257
    :cond_94
    new-instance p0, Ljava/io/IOException;

    const-string p1, "failed to checkAvailabilityOfBindingEmail"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2247
    :cond_9c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "passportInfo is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/xiaomi/accountsdk/account/data/k;Ljava/lang/String;Ljava/util/Map;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/accountsdk/account/data/k;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/d;,
            Lcom/xiaomi/accountsdk/request/c;
        }
    .end annotation

    .line 1824
    invoke-static {p0, p1, p2}, Lcom/xiaomi/accountsdk/account/b;->a(Lcom/xiaomi/accountsdk/account/data/k;Ljava/lang/String;Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/d;,
            Lcom/xiaomi/accountsdk/request/c;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1818
    new-instance v6, Lcom/xiaomi/accountsdk/account/data/k;

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/accountsdk/account/data/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, p4, p5}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/account/data/k;Ljava/lang/String;Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method public static b(Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/account/a/n;,
            Lcom/xiaomi/accountsdk/account/a/s;,
            Lcom/xiaomi/accountsdk/account/a/v;,
            Lcom/xiaomi/accountsdk/account/a/i;
        }
    .end annotation

    if-eqz p0, :cond_104

    .line 2916
    new-instance v0, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v1, "user"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;->a:Ljava/lang/String;

    .line 2917
    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    const-string v1, "userHash"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;->b:Ljava/lang/String;

    .line 2918
    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    const-string v1, "sid"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;->f:Ljava/lang/String;

    .line 2919
    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    const-string v1, "captCode"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;->g:Ljava/lang/String;

    .line 2920
    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    const-string v1, "_json"

    const-string v2, "true"

    .line 2921
    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    .line 2923
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/XMPassportUtil;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/utils/k;->putAll(Ljava/util/Map;)V

    .line 2925
    new-instance v1, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v2, "activatorToken"

    iget-object v3, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;->c:Ljava/lang/String;

    .line 2926
    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v1

    const-string v2, "ick"

    iget-object v3, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;->h:Ljava/lang/String;

    .line 2927
    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v1

    .line 2929
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;->e:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/utils/k;Ljava/lang/String;)V

    .line 2931
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/xiaomi/accountsdk/account/g;->e:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/sendServiceLoginTicket"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/xiaomi/accountsdk/request/s;->c(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p0

    if-eqz p0, :cond_fc

    .line 2937
    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;)Ljava/lang/String;

    move-result-object p0

    .line 2939
    :try_start_6e
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "code"

    .line 2940
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    const-string v1, "description"

    .line 2941
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2942
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", desc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "XMPassport"

    .line 2943
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendPhoneLoginTicket: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/accountsdk/utils/d;->h(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_e7

    const/16 v3, 0x5345

    if-eq p0, v3, :cond_e1

    const v3, 0x11178

    if-eq p0, v3, :cond_db

    const v3, 0x11186

    if-eq p0, v3, :cond_d5

    const v2, 0x153d9

    if-eq p0, v2, :cond_c9

    .line 2956
    new-instance v0, Lcom/xiaomi/accountsdk/request/k;

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/accountsdk/request/k;-><init>(ILjava/lang/String;)V

    throw v0

    .line 2948
    :cond_c9
    new-instance v2, Lcom/xiaomi/accountsdk/account/a/n;

    const-string v3, "captchaUrl"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p0, v1, v0}, Lcom/xiaomi/accountsdk/account/a/n;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 2950
    :cond_d5
    new-instance p0, Lcom/xiaomi/accountsdk/account/a/s;

    invoke-direct {p0, v2}, Lcom/xiaomi/accountsdk/account/a/s;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2952
    :cond_db
    new-instance p0, Lcom/xiaomi/accountsdk/account/a/i;

    invoke-direct {p0, v1}, Lcom/xiaomi/accountsdk/account/a/i;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2954
    :cond_e1
    new-instance p0, Lcom/xiaomi/accountsdk/account/a/v;

    invoke-direct {p0, v2}, Lcom/xiaomi/accountsdk/account/a/v;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e7
    const-string p0, "data"

    .line 2946
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "vCodeLen"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0
    :try_end_f3
    .catch Lorg/json/JSONException; {:try_start_6e .. :try_end_f3} :catch_f4

    return p0

    .line 2959
    :catch_f4
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    const-string v0, "result not json"

    invoke-direct {p0, v0}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2935
    :cond_fc
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    const-string v0, "result content is null"

    invoke-direct {p0, v0}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2914
    :cond_104
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "send phone ticket params is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Ljava/lang/String;)Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 620
    :try_start_1
    invoke-static {p0, v0, v0}, Lcom/xiaomi/accountsdk/request/s;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/xiaomi/accountsdk/request/SimpleRequest$StreamContent;

    move-result-object p0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_5} :catch_18
    .catch Lcom/xiaomi/accountsdk/request/a; {:try_start_1 .. :try_end_5} :catch_f
    .catch Lcom/xiaomi/accountsdk/request/c; {:try_start_1 .. :try_end_5} :catch_6

    goto :goto_21

    :catch_6
    move-exception p0

    const-string v1, "XMPassport"

    const-string v2, "getCaptchaImageAndIck"

    .line 626
    invoke-static {v1, v2, p0}, Lcom/xiaomi/accountsdk/utils/d;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    :catch_f
    move-exception p0

    const-string v1, "XMPassport"

    const-string v2, "getCaptchaImageAndIck"

    .line 624
    invoke-static {v1, v2, p0}, Lcom/xiaomi/accountsdk/utils/d;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    :catch_18
    move-exception p0

    const-string v1, "XMPassport"

    const-string v2, "getCaptchaImageAndIck"

    .line 622
    invoke-static {v1, v2, p0}, Lcom/xiaomi/accountsdk/utils/d;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_20
    move-object p0, v0

    :goto_21
    if-nez p0, :cond_24

    return-object v0

    .line 632
    :cond_24
    :try_start_24
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StreamContent;->d()Ljava/io/InputStream;

    move-result-object v0

    .line 633
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "ick"

    .line 634
    invoke-virtual {p0, v1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StreamContent;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 635
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0
    :try_end_36
    .catchall {:try_start_24 .. :try_end_36} :catchall_3a

    .line 637
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StreamContent;->e()V

    return-object v0

    :catchall_3a
    move-exception v0

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StreamContent;->e()V

    throw v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/account/a/g;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/account/a/l;,
            Lcom/xiaomi/accountsdk/account/a/o;
        }
    .end annotation

    .line 383
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;

    invoke-direct {v0, p0, p3, p1}, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/xiaomi/accountsdk/account/g;->M:Ljava/lang/String;

    .line 384
    invoke-virtual {v0, p0}, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;

    move-result-object p0

    .line 385
    invoke-virtual {p0, p2}, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;

    move-result-object p0

    const/4 p1, 0x1

    .line 386
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->a(Z)Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;

    move-result-object p0

    const/4 p1, 0x0

    .line 387
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->b(Z)Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;

    move-result-object p0

    .line 388
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->a()Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams;

    move-result-object p0

    .line 389
    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/h;ZLjava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/account/a/q;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/request/k;
        }
    .end annotation

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .line 536
    invoke-static/range {v0 .. v7}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/h;ZLjava/lang/String;Z)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/account/a/g;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/account/a/l;,
            Lcom/xiaomi/accountsdk/account/a/o;
        }
    .end annotation

    .line 430
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;

    invoke-direct {v0, p0, p3, p1}, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-virtual {v0, p4}, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;

    move-result-object p0

    .line 432
    invoke-virtual {p0, p2}, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;

    move-result-object p0

    const/4 p1, 0x0

    .line 433
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->a(Z)Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;

    move-result-object p0

    .line 434
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->b(Z)Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;

    move-result-object p0

    .line 435
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->a()Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams;

    move-result-object p0

    .line 436
    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/account/a/j;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/account/a/x;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1311
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;-><init>()V

    .line 1312
    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;

    move-result-object p0

    .line 1313
    invoke-virtual {p0, p2, p4, p5}, Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;

    move-result-object p0

    .line 1314
    invoke-virtual {p0, p3}, Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;->a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;

    move-result-object p0

    .line 1315
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;->a()Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams;

    move-result-object p0

    .line 1316
    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/xiaomi/accountsdk/account/data/k;Ljava/lang/String;Ljava/util/List;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/accountsdk/account/data/k;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;",
            ">;)",
            "Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/d;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_67

    const/4 v0, 0x0

    if-eqz p2, :cond_1a

    .line 2703
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    :goto_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

    .line 2704
    iget v2, v2, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;->f:I

    or-int/2addr v1, v2

    goto :goto_a

    :cond_1a
    const/4 v1, 0x0

    .line 2707
    :cond_1b
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 v2, 0xf

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 2708
    new-instance v0, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v2, "userId"

    .line 2709
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/k;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    const-string v2, "sid"

    .line 2710
    invoke-virtual {v0, v2, p1}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p1

    const-string v0, "transId"

    .line 2711
    invoke-virtual {p1, v0, p2}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p1

    if-eqz v1, :cond_4f

    const-string p2, "flags"

    .line 2713
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    .line 2715
    :cond_4f
    sget-object p2, Lcom/xiaomi/accountsdk/account/g;->w:Ljava/lang/String;

    .line 2716
    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->d(Lcom/xiaomi/accountsdk/account/data/k;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/k;->e()Ljava/lang/String;

    move-result-object v2

    .line 2715
    invoke-static {p2, p1, v0, v1, v2}, Lcom/xiaomi/accountsdk/request/r;->b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;

    move-result-object p1

    .line 2717
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/k;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Ljava/lang/String;Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;

    move-result-object p0

    return-object p0

    .line 2699
    :cond_67
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "passportInfo is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Lcom/xiaomi/accountsdk/account/data/k;)Lcom/xiaomi/accountsdk/account/data/q;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/d;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/request/a;
        }
    .end annotation

    .line 1571
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1572
    sget-object v1, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;->a:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1573
    sget-object v1, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;->c:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 1574
    invoke-static {p0, v1, v0}, Lcom/xiaomi/accountsdk/account/XMPassport;->b(Lcom/xiaomi/accountsdk/account/data/k;Ljava/lang/String;Ljava/util/List;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 1576
    new-instance v1, Lcom/xiaomi/accountsdk/account/data/q;

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/k;->a()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/xiaomi/accountsdk/account/data/q;-><init>(Ljava/lang/String;)V

    .line 1577
    iget-object p0, v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->b:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/xiaomi/accountsdk/account/data/q;->a(Ljava/lang/String;)V

    .line 1578
    iget-object p0, v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->j:Ljava/util/Calendar;

    invoke-virtual {v1, p0}, Lcom/xiaomi/accountsdk/account/data/q;->a(Ljava/util/Calendar;)V

    .line 1579
    iget-object p0, v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->i:Lcom/xiaomi/accountsdk/account/data/f;

    invoke-virtual {v1, p0}, Lcom/xiaomi/accountsdk/account/data/q;->a(Lcom/xiaomi/accountsdk/account/data/f;)V

    return-object v1

    :cond_2f
    return-object v1
.end method

.method private static b(Lcom/xiaomi/accountsdk/account/data/k;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/utils/k;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/accountsdk/account/data/k;",
            "Ljava/lang/String;",
            "Lcom/xiaomi/accountsdk/account/data/b;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/accountsdk/utils/k<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_3d

    .line 2358
    new-instance v0, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v1, "userId"

    .line 2359
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    const-string v1, "sid"

    .line 2360
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/k;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p0

    const-string v0, "vkey"

    .line 2361
    invoke-virtual {p0, v0, p3}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p0

    const-string p3, "authST"

    .line 2362
    invoke-virtual {p0, p3, p4}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p0

    .line 2363
    sget-object p3, Lcom/xiaomi/accountsdk/account/data/b;->d:Lcom/xiaomi/accountsdk/account/data/b;

    if-ne p2, p3, :cond_37

    const-string p2, "oldAuthPhone"

    .line 2364
    invoke-virtual {p0, p2, p5}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p2

    const-string p3, "newAuthPhone"

    .line 2365
    invoke-virtual {p2, p3, p1}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    goto :goto_3c

    :cond_37
    const-string p2, "address"

    .line 2367
    invoke-virtual {p0, p2, p1}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    :goto_3c
    return-object p0

    .line 2356
    :cond_3d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "type is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static b()Ljava/lang/String;
    .registers 2

    .line 3297
    new-instance v0, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;

    invoke-static {}, Lcom/xiaomi/accountsdk/account/h;->e()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/xiaomi/accountsdk/account/data/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/d;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/account/a/f;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_d2

    .line 2458
    new-instance v0, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v1, "userId"

    .line 2459
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    const-string v1, "address"

    .line 2460
    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p1

    const-string v0, "simId"

    .line 2461
    invoke-static {p2}, Lcom/xiaomi/accountsdk/utils/CloudCoder;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p1

    const-string p2, "userSpaceId"

    .line 2462
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/y;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p1

    const-string p2, "deviceId"

    .line 2463
    invoke-static {p3}, Lcom/xiaomi/accountsdk/utils/CloudCoder;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p1

    .line 2464
    sget-object p2, Lcom/xiaomi/accountsdk/account/g;->ak:Ljava/lang/String;

    .line 2465
    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->d(Lcom/xiaomi/accountsdk/account/data/k;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/k;->e()Ljava/lang/String;

    move-result-object p0

    .line 2464
    invoke-static {p2, p1, p3, v0, p0}, Lcom/xiaomi/accountsdk/request/r;->c(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;

    move-result-object p0

    if-eqz p0, :cond_ca

    const-string p1, "code"

    .line 2469
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "description"

    .line 2470
    invoke-virtual {p0, p2}, Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 2471
    instance-of p3, p1, Ljava/lang/Integer;

    if-eqz p3, :cond_ab

    .line 2472
    move-object p3, p1

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-eqz p3, :cond_88

    const/16 p0, 0x2721

    if-eq p3, p0, :cond_a9

    const p0, 0x11178

    if-eq p3, p0, :cond_69

    goto :goto_ab

    .line 2485
    :cond_69
    new-instance p0, Lcom/xiaomi/accountsdk/account/a/f;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "code: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ;description: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/account/a/f;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_88
    const-string p1, "data"

    .line 2474
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 2475
    instance-of p1, p0, Ljava/util/Map;

    if-eqz p1, :cond_a9

    .line 2476
    check-cast p0, Ljava/util/Map;

    const-string p1, "key"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_a1

    .line 2480
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2478
    :cond_a1
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    const-string p1, "key is null"

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a9
    const/4 p0, 0x0

    return-object p0

    .line 2488
    :cond_ab
    :goto_ab
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "code: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; description: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2467
    :cond_ca
    new-instance p0, Ljava/io/IOException;

    const-string p1, "failed to checkPhoneActivateStatus"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2456
    :cond_d2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "passportInfo is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Lcom/xiaomi/accountsdk/account/data/k;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/d;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/account/a/h;
        }
    .end annotation

    if-eqz p0, :cond_41

    .line 2577
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2578
    new-instance v1, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v2, "userId"

    .line 2579
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/k;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v1

    const-string v2, "region"

    .line 2580
    invoke-virtual {v1, v2, p1}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p1

    const-string v1, "sid"

    .line 2581
    invoke-virtual {p1, v1, p2}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p1

    const-string p2, "transId"

    .line 2582
    invoke-virtual {p1, p2, v0}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p1

    .line 2583
    sget-object p2, Lcom/xiaomi/accountsdk/account/g;->an:Ljava/lang/String;

    .line 2585
    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->d(Lcom/xiaomi/accountsdk/account/data/k;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    const/4 v1, 0x1

    .line 2587
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/k;->e()Ljava/lang/String;

    move-result-object p0

    .line 2583
    invoke-static {p2, p1, v0, v1, p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)V

    return-void

    .line 2575
    :cond_41
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "null passport info"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/request/k;
        }
    .end annotation

    .line 1115
    new-instance v0, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v1, "phone"

    .line 1116
    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p0

    const-string v0, "ticket"

    .line 1117
    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p0

    .line 1118
    sget-object p1, Lcom/xiaomi/accountsdk/account/g;->F:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1119
    invoke-static {p1, p0, v0, v1}, Lcom/xiaomi/accountsdk/request/s;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p0

    .line 1121
    :try_start_19
    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;)Ljava/lang/String;

    move-result-object p0

    .line 1122
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "code"

    .line 1123
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_2b

    return-void

    .line 1125
    :cond_2b
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    const-string p1, "invalid response, failed to check register verify code"

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_33
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_33} :catch_33

    .line 1129
    :catch_33
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    const-string p1, "invalid response, fail to convert to JSON"

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/account/a/t;,
            Lcom/xiaomi/accountsdk/account/a/n;
        }
    .end annotation

    .line 1076
    new-instance v0, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v1, "phone"

    .line 1077
    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p0

    if-eqz p1, :cond_12

    const-string v0, "icode"

    .line 1079
    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    :cond_12
    const/4 p1, 0x0

    if-eqz p2, :cond_20

    .line 1083
    new-instance p1, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {p1}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v0, "ick"

    invoke-virtual {p1, v0, p2}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p1

    .line 1085
    :cond_20
    sget-object p2, Lcom/xiaomi/accountsdk/account/g;->D:Ljava/lang/String;

    const/4 v0, 0x1

    .line 1086
    invoke-static {p2, p0, p1, v0}, Lcom/xiaomi/accountsdk/request/s;->c(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p0

    .line 1088
    :try_start_27
    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;)Ljava/lang/String;

    move-result-object p0

    .line 1089
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "code"

    .line 1090
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_36
    .catch Lorg/json/JSONException; {:try_start_27 .. :try_end_36} :catch_5f

    if-eqz p0, :cond_5e

    const/16 p2, 0x4e3f

    if-eq p0, p2, :cond_50

    const/16 p1, 0x61a9

    if-eq p0, p1, :cond_48

    .line 1103
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    const-string p1, "process result is failed"

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1095
    :cond_48
    :try_start_48
    new-instance p0, Lcom/xiaomi/accountsdk/account/a/t;

    const-string p1, "phone is registered"

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/account/a/t;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1097
    :cond_50
    new-instance p2, Lcom/xiaomi/accountsdk/account/a/n;

    const-string v0, ""

    const-string v1, "info"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, v0, p1}, Lcom/xiaomi/accountsdk/account/a/n;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw p2
    :try_end_5e
    .catch Lorg/json/JSONException; {:try_start_48 .. :try_end_5e} :catch_5f

    :cond_5e
    return-void

    :catch_5f
    move-exception p0

    const-string p1, "XMPassport"

    const-string p2, "getRegisterVerifyCode "

    .line 1100
    invoke-static {p1, p2, p0}, Lcom/xiaomi/accountsdk/utils/d;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1101
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    const-string p1, "process result is failed"

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/account/a/g;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/account/a/l;,
            Lcom/xiaomi/accountsdk/account/a/o;
        }
    .end annotation

    .line 396
    sget-object v0, Lcom/xiaomi/accountsdk/account/g;->M:Ljava/lang/String;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/xiaomi/accountsdk/account/XMPassport;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/p;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/d;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/request/a;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1532
    new-instance v6, Lcom/xiaomi/accountsdk/account/data/k;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/accountsdk/account/data/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/account/data/k;)Lcom/xiaomi/accountsdk/account/data/p;

    move-result-object p0

    return-object p0
.end method

.method private static c(Lcom/xiaomi/accountsdk/account/data/k;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/d;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/request/a;
        }
    .end annotation

    .line 1958
    new-instance v0, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v1, "userId"

    .line 1959
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    const-string v1, "method"

    const-string v2, "json"

    .line 1960
    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    .line 1961
    sget-object v1, Lcom/xiaomi/accountsdk/account/g;->y:Ljava/lang/String;

    .line 1962
    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->d(Lcom/xiaomi/accountsdk/account/data/k;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/k;->e()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x1

    .line 1961
    invoke-static {v1, v0, v2, v3, p0}, Lcom/xiaomi/accountsdk/request/r;->b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;

    move-result-object p0

    if-eqz p0, :cond_92

    const-string v0, "code"

    .line 1966
    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1967
    sget-object v1, Lcom/xiaomi/accountsdk/account/XMPassport;->p:Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    const-string v1, "data"

    .line 1968
    invoke-virtual {p0, v1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1969
    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_57

    .line 1970
    check-cast v1, Ljava/util/Map;

    const-string p0, "uploadUrl"

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_4f

    .line 1974
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1972
    :cond_4f
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    const-string v0, "uploadUrl is null"

    invoke-direct {p0, v0}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_57
    const-string v1, "description"

    .line 1977
    invoke-virtual {p0, v1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 1978
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestUploadUserIcon failed, code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "; description: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XMPassport"

    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/d;->g(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    new-instance v0, Lcom/xiaomi/accountsdk/request/k;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestUploadUserIcon failed, description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1964
    :cond_92
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    const-string v0, "requestUploadUserIcon request content is null"

    invoke-direct {p0, v0}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static c(Lcom/xiaomi/accountsdk/account/data/k;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/d;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/request/a;
        }
    .end annotation

    if-eqz p0, :cond_cb

    .line 2053
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2054
    new-instance v1, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v2, "userId"

    .line 2055
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/k;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v1

    const-string v2, "_json"

    const/4 v3, 0x1

    .line 2056
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v1

    const-string v2, "authST"

    .line 2057
    invoke-virtual {v1, v2, p1}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p1

    const-string v1, "transId"

    .line 2058
    invoke-virtual {p1, v1, v0}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p1

    const-string v1, "traceId"

    .line 2059
    invoke-virtual {p1, v1, v0}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p1

    .line 2060
    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->d(Lcom/xiaomi/accountsdk/account/data/k;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    .line 2061
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/k;->e()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p1, v0, v3, p0}, Lcom/xiaomi/accountsdk/request/r;->b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;

    move-result-object p0

    if-eqz p0, :cond_c3

    const-string p1, "code"

    .line 2065
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 2066
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "code: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", desc: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "description"

    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "XMPassport"

    .line 2067
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIdentityAuthUrl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/d;->g(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_ac

    .line 2069
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_aa

    const/4 v0, 0x2

    if-ne p1, v0, :cond_ac

    const-string p1, "url"

    .line 2073
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_a2

    .line 2077
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2075
    :cond_a2
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    const-string p1, "identityUrl is null"

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_aa
    const/4 p0, 0x0

    return-object p0

    .line 2080
    :cond_ac
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getIdentityAuthUrl: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2063
    :cond_c3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "getIdentityAuthUrl result should not be null"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2051
    :cond_cb
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "passportInfo is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Lcom/xiaomi/accountsdk/account/data/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/account/a/h;,
            Lcom/xiaomi/accountsdk/request/d;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;
        }
    .end annotation

    if-eqz p0, :cond_47

    .line 2604
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2605
    new-instance v1, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v2, "userId"

    .line 2606
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/k;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v1

    const-string v2, "region"

    .line 2607
    invoke-virtual {v1, v2, p1}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p1

    const-string v1, "location"

    .line 2608
    invoke-virtual {p1, v1, p2}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p1

    const-string p2, "sid"

    .line 2609
    invoke-virtual {p1, p2, p3}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p1

    const-string p2, "transId"

    .line 2610
    invoke-virtual {p1, p2, v0}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p1

    .line 2611
    sget-object p2, Lcom/xiaomi/accountsdk/account/g;->ao:Ljava/lang/String;

    .line 2613
    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->d(Lcom/xiaomi/accountsdk/account/data/k;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p3

    const/4 v0, 0x1

    .line 2615
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/k;->e()Ljava/lang/String;

    move-result-object p0

    .line 2611
    invoke-static {p2, p1, p3, v0, p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)V

    return-void

    .line 2602
    :cond_47
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "null passport info"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/k;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1208
    new-instance v0, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v1, "userId"

    .line 1210
    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p0

    const-string v0, "addressType"

    const-string v1, "EM"

    .line 1211
    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p0

    const-string v0, "address"

    .line 1212
    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p0

    const/4 p1, 0x0

    .line 1215
    :try_start_1a
    sget-object v0, Lcom/xiaomi/accountsdk/account/g;->C:Ljava/lang/String;

    const/4 v1, 0x1

    .line 1216
    invoke-static {v0, p0, p1, v1}, Lcom/xiaomi/accountsdk/request/s;->b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;

    move-result-object p0
    :try_end_21
    .catch Lcom/xiaomi/accountsdk/request/a; {:try_start_1a .. :try_end_21} :catch_27
    .catch Lcom/xiaomi/accountsdk/request/c; {:try_start_1a .. :try_end_21} :catch_22

    goto :goto_2c

    :catch_22
    move-exception p0

    .line 1220
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/c;->printStackTrace()V

    goto :goto_2b

    :catch_27
    move-exception p0

    .line 1218
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/a;->printStackTrace()V

    :goto_2b
    move-object p0, p1

    :goto_2c
    if-eqz p0, :cond_45

    const-string p1, "code"

    .line 1225
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 1226
    sget-object p1, Lcom/xiaomi/accountsdk/account/XMPassport;->p:Ljava/lang/Integer;

    invoke-virtual {p1, p0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3d

    return-void

    .line 1227
    :cond_3d
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    const-string p1, "invalid response, failed to send activate email"

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1223
    :cond_45
    new-instance p0, Ljava/io/IOException;

    const-string p1, "failed to register, no response"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/account/a/h;
        }
    .end annotation

    .line 1498
    new-instance v0, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v1, "userId"

    .line 1500
    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    const-string v1, "password"

    .line 1501
    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p1

    const-string v0, "_json"

    const-string v1, "true"

    .line 1502
    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p1

    const-string v0, "passportsecurity_ph"

    .line 1503
    invoke-virtual {p1, v0, p3}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p1

    .line 1504
    new-instance v0, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v1, "userId"

    .line 1505
    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p0

    const-string v0, "serviceToken"

    .line 1506
    invoke-virtual {p0, v0, p2}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p0

    const-string p2, "passportsecurity_ph"

    .line 1507
    invoke-virtual {p0, p2, p3}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p0

    const-string p2, "passportsecurity_slh"

    .line 1508
    invoke-virtual {p0, p2, p4}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p0

    .line 1509
    sget-object p2, Lcom/xiaomi/accountsdk/account/g;->J:Ljava/lang/String;

    const/4 p3, 0x1

    .line 1510
    invoke-static {p2, p1, p0, p3}, Lcom/xiaomi/accountsdk/request/s;->c(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p0

    .line 1512
    :try_start_43
    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;)Ljava/lang/String;

    move-result-object p0

    .line 1513
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "result"

    .line 1514
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmp-long p3, p1, p3

    if-nez p3, :cond_59

    return-void

    :cond_59
    const-wide/32 p3, 0x68ec989

    cmp-long p3, p1, p3

    if-eqz p3, :cond_7f

    const-wide/32 p3, 0x68f8cd9

    cmp-long p1, p1, p3

    if-nez p1, :cond_68

    goto :goto_7f

    .line 1521
    :cond_68
    new-instance p1, Lcom/xiaomi/accountsdk/request/k;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "reset password fail: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1519
    :cond_7f
    :goto_7f
    new-instance p0, Lcom/xiaomi/accountsdk/account/a/h;

    const-string p1, "invalid password"

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/account/a/h;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_87
    .catch Lorg/json/JSONException; {:try_start_43 .. :try_end_87} :catch_87

    :catch_87
    move-exception p0

    .line 1524
    new-instance p1, Lcom/xiaomi/accountsdk/request/k;

    const-string p2, "process result is failed"

    invoke-direct {p1, p2, p0}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/d;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/account/a/h;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1837
    invoke-static/range {v0 .. v7}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Lcom/xiaomi/accountsdk/account/data/f;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/k;
        }
    .end annotation

    .line 1137
    sget-object v0, Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;->a:Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;

    invoke-static {p0, v0}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Ljava/lang/String;Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    .line 1138
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    return v1

    :cond_10
    const-string v0, "-1"

    .line 1140
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1a

    return v2

    .line 1143
    :cond_1a
    new-instance v0, Lcom/xiaomi/accountsdk/request/k;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/xiaomi/accountsdk/account/g;->v:Ljava/lang/String;

    aput-object v4, v3, v1

    aput-object p0, v3, v2

    const-string p0, "url %s should only return 1 or -1 as user id, but actually return %s"

    .line 1144
    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static d(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/h;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;
        }
    .end annotation

    const/4 v0, 0x0

    .line 663
    :try_start_1
    invoke-static {v0, p0, v0, v0}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    :try_end_4
    .catch Lcom/xiaomi/accountsdk/account/a/g; {:try_start_1 .. :try_end_4} :catch_14
    .catch Lcom/xiaomi/accountsdk/account/a/l; {:try_start_1 .. :try_end_4} :catch_c

    .line 669
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    const-string v0, "Unexpected login success with empty pass token"

    invoke-direct {p0, v0}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0

    .line 667
    :catch_c
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    const-string v0, "should not be throw this exception"

    invoke-direct {p0, v0}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_14
    move-exception p0

    .line 665
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/a/g;->a()Lcom/xiaomi/accountsdk/account/data/h;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/m;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/request/k;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3229
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p0, "passport"

    .line 3230
    :cond_8
    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->d(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/h;

    move-result-object v0

    .line 3231
    new-instance v1, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v2, "sid"

    .line 3232
    invoke-virtual {v1, v2, p0}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v2

    const-string v3, "callback"

    iget-object v0, v0, Lcom/xiaomi/accountsdk/account/data/h;->c:Ljava/lang/String;

    .line 3233
    invoke-virtual {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    .line 3234
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 3235
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/XMPassport;->d(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/h;

    move-result-object v0

    const-string v2, "csid"

    .line 3236
    invoke-virtual {v1, v2, p1}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p1

    const-string v2, "ccallback"

    iget-object v0, v0, Lcom/xiaomi/accountsdk/account/data/h;->c:Ljava/lang/String;

    .line 3237
    invoke-virtual {p1, v2, v0}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    .line 3240
    :cond_35
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/xiaomi/accountsdk/account/g;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/longPolling/loginUrl"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 3241
    invoke-static {p1, v1, v0, v2}, Lcom/xiaomi/accountsdk/request/s;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p1

    if-eqz p1, :cond_ba

    .line 3245
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;)Ljava/lang/String;

    move-result-object p1

    .line 3247
    :try_start_54
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "code"

    .line 3248
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "description"

    .line 3249
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "XMPassport"

    .line 3250
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getQRLoginUrl code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", desc: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/accountsdk/utils/d;->h(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_9d

    const-string v1, "lp"

    .line 3253
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "loginUrl"

    .line 3254
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "qr"

    .line 3255
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3256
    new-instance v3, Lcom/xiaomi/accountsdk/account/data/m;

    invoke-direct {v3, p0, v1, v2, v0}, Lcom/xiaomi/accountsdk/account/data/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 3258
    :cond_9d
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    invoke-direct {p0, v1, v2}, Lcom/xiaomi/accountsdk/request/k;-><init>(ILjava/lang/String;)V

    throw p0
    :try_end_a3
    .catch Lorg/json/JSONException; {:try_start_54 .. :try_end_a3} :catch_a3

    .line 3261
    :catch_a3
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JSONException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3243
    :cond_ba
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    const-string p1, "qr login url content is null"

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/q;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/d;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/request/a;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1562
    new-instance v6, Lcom/xiaomi/accountsdk/account/data/k;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/accountsdk/account/data/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/xiaomi/accountsdk/account/XMPassport;->b(Lcom/xiaomi/accountsdk/account/data/k;)Lcom/xiaomi/accountsdk/account/data/q;

    move-result-object p0

    return-object p0
.end method

.method private static d(Lcom/xiaomi/accountsdk/account/data/k;)Lcom/xiaomi/accountsdk/utils/k;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/accountsdk/account/data/k;",
            ")",
            "Lcom/xiaomi/accountsdk/utils/k<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_2f

    .line 2536
    new-instance v0, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v1, "serviceToken"

    .line 2537
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/k;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    .line 2538
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/k;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_25

    const-string v1, "userId"

    .line 2539
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/k;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    goto :goto_2e

    :cond_25
    const-string v1, "cUserId"

    .line 2541
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/k;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    :goto_2e
    return-object v0

    .line 2534
    :cond_2f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "passportInfo is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/account/a/n;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 982
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams$Builder;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams$Builder;-><init>()V

    .line 983
    invoke-virtual {v0, p0}, Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams$Builder;->a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams$Builder;

    move-result-object p0

    .line 984
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams$Builder;->b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams$Builder;

    move-result-object p0

    .line 985
    invoke-virtual {p0, p2, p3}, Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams$Builder;->a()Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams;

    move-result-object p0

    .line 987
    :try_start_15
    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams;)Ljava/lang/String;

    move-result-object p0
    :try_end_19
    .catch Lcom/xiaomi/accountsdk/account/a/w; {:try_start_15 .. :try_end_19} :catch_1a

    return-object p0

    :catch_1a
    move-exception p0

    const-string p1, "XMPassport"

    const-string p2, "email used"

    .line 989
    invoke-static {p1, p2}, Lcom/xiaomi/accountsdk/utils/d;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    new-instance p1, Lcom/xiaomi/accountsdk/request/k;

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/a/w;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static d(Lcom/xiaomi/accountsdk/account/data/k;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/d;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/account/a/f;,
            Lcom/xiaomi/accountsdk/account/a/u;
        }
    .end annotation

    if-eqz p0, :cond_bc

    .line 2296
    new-instance v0, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v1, "userId"

    .line 2297
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    const-string v1, "address"

    .line 2298
    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p1

    .line 2299
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/XMPassportUtil;->a()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/accountsdk/utils/k;->putAll(Ljava/util/Map;)V

    .line 2301
    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->d(Lcom/xiaomi/accountsdk/account/data/k;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/k;->e()Ljava/lang/String;

    move-result-object p0

    .line 2300
    invoke-static {p2, p1, v0, v1, p0}, Lcom/xiaomi/accountsdk/request/r;->c(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;

    move-result-object p0

    if-eqz p0, :cond_b4

    const-string p1, "code"

    .line 2305
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "description"

    .line 2306
    invoke-virtual {p0, p2}, Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 2307
    instance-of p2, p1, Ljava/lang/Integer;

    if-eqz p2, :cond_95

    .line 2308
    move-object p2, p1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eqz p2, :cond_94

    const v0, 0x11176

    if-eq p2, v0, :cond_75

    const v0, 0x11178

    if-eq p2, v0, :cond_75

    const v0, 0x11186

    if-eq p2, v0, :cond_56

    goto :goto_95

    .line 2315
    :cond_56
    new-instance p2, Lcom/xiaomi/accountsdk/account/a/u;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ;description: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/xiaomi/accountsdk/account/a/u;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2313
    :cond_75
    new-instance p2, Lcom/xiaomi/accountsdk/account/a/f;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ;description: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/xiaomi/accountsdk/account/a/f;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_94
    return-void

    .line 2318
    :cond_95
    :goto_95
    new-instance p2, Lcom/xiaomi/accountsdk/request/k;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; description: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2303
    :cond_b4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "failed to sendVerifyCode"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2294
    :cond_bc
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "passportInfo is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1057
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_2c

    .line 1060
    :cond_d
    invoke-static {}, Lcom/xiaomi/accountsdk/account/h;->e()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_15

    const/4 p1, 0x0

    goto :goto_1e

    .line 1061
    :cond_15
    new-instance v1, Lcom/xiaomi/accountsdk/account/e;

    invoke-direct {v1, v0}, Lcom/xiaomi/accountsdk/account/e;-><init>(Landroid/content/Context;)V

    .line 1062
    invoke-virtual {v1, p1}, Lcom/xiaomi/accountsdk/account/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1063
    :goto_1e
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_2b

    :cond_25
    sget-object v0, Lcom/xiaomi/accountsdk/account/g;->d:Ljava/lang/String;

    .line 1064
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_2b
    return-object p0

    :cond_2c
    :goto_2c
    return-object p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/account/a/n;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/account/a/u;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1237
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;-><init>()V

    .line 1238
    invoke-virtual {v0, p0}, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;->a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;

    move-result-object p0

    .line 1239
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;->b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;

    move-result-object p0

    .line 1240
    invoke-virtual {p0, p2, p3}, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;

    move-result-object p0

    .line 1241
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;->a()Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;

    move-result-object p0

    .line 1242
    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;)V

    return-void
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/account/a/j;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/account/a/x;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1297
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;-><init>()V

    .line 1298
    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;

    move-result-object p0

    const/4 p1, 0x0

    .line 1299
    invoke-virtual {p0, p2, p1, p1}, Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;

    move-result-object p0

    .line 1300
    invoke-virtual {p0, p3}, Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;->a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;

    move-result-object p0

    .line 1301
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;->a()Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams;

    move-result-object p0

    .line 1302
    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    move-result-object p0

    return-object p0
.end method

.method private static f(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/h;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/account/a/l;,
            Lcom/xiaomi/accountsdk/account/a/o;
        }
    .end annotation

    .line 3064
    :try_start_0
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 3065
    invoke-virtual {v0, p0}, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->b(Z)Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;

    move-result-object p0

    .line 3066
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->a()Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams;

    move-result-object p0

    .line 3067
    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    :try_end_12
    .catch Lcom/xiaomi/accountsdk/account/a/g; {:try_start_0 .. :try_end_12} :catch_1a

    .line 3071
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    const-string p1, "Unexpected login success with empty pass token"

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1a
    move-exception p0

    .line 3069
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/a/g;->a()Lcom/xiaomi/accountsdk/account/data/h;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/account/a/h;,
            Lcom/xiaomi/accountsdk/account/a/v;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1402
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;-><init>()V

    .line 1403
    invoke-virtual {v0, p0, p2}, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;

    move-result-object p0

    .line 1404
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;->a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;

    move-result-object p0

    .line 1405
    invoke-virtual {p0, p3}, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;->b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;

    move-result-object p0

    .line 1406
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;->a()Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;

    move-result-object p0

    .line 1409
    :try_start_15
    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object p0

    .line 1410
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->a()Ljava/lang/String;

    move-result-object p0
    :try_end_1d
    .catch Lcom/xiaomi/accountsdk/account/a/x; {:try_start_15 .. :try_end_1d} :catch_29
    .catch Lcom/xiaomi/accountsdk/account/a/s; {:try_start_15 .. :try_end_1d} :catch_1e

    return-object p0

    :catch_1e
    move-exception p0

    .line 1414
    new-instance p1, Lcom/xiaomi/accountsdk/request/k;

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/a/s;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_29
    move-exception p0

    .line 1412
    new-instance p1, Lcom/xiaomi/accountsdk/request/k;

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/a/x;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/p;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/d;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/request/a;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1540
    new-instance v6, Lcom/xiaomi/accountsdk/account/data/k;

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/accountsdk/account/data/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/account/data/k;)Lcom/xiaomi/accountsdk/account/data/p;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;
        }
    .end annotation

    .line 1752
    new-instance v0, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v1, "userId"

    .line 1753
    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    const-string v1, "snsType"

    .line 1754
    invoke-virtual {v0, v1, p2}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p2

    const-string v0, "sid"

    .line 1755
    invoke-virtual {p2, v0, p1}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p1

    .line 1756
    new-instance p2, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {p2}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v0, "userId"

    .line 1757
    invoke-virtual {p2, v0, p0}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p0

    const-string p2, "serviceToken"

    .line 1758
    invoke-virtual {p0, p2, p3}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p0

    .line 1759
    sget-object p2, Lcom/xiaomi/accountsdk/account/g;->O:Ljava/lang/String;

    const/4 p3, 0x1

    .line 1760
    invoke-static {p2, p1, p0, p3}, Lcom/xiaomi/accountsdk/request/s;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p0

    if-eqz p0, :cond_36

    .line 1765
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1763
    :cond_36
    new-instance p0, Ljava/io/IOException;

    const-string p1, "failed to get response to get access token"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;
        }
    .end annotation

    .line 1771
    new-instance v0, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v1, "userId"

    .line 1772
    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object v0

    const-string v1, "snsType"

    .line 1773
    invoke-virtual {v0, v1, p2}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p2

    const-string v0, "sid"

    .line 1774
    invoke-virtual {p2, v0, p1}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p1

    .line 1775
    new-instance p2, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {p2}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v0, "userId"

    .line 1776
    invoke-virtual {p2, v0, p0}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p0

    const-string p2, "serviceToken"

    .line 1777
    invoke-virtual {p0, p2, p3}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    move-result-object p0

    .line 1778
    sget-object p2, Lcom/xiaomi/accountsdk/account/g;->P:Ljava/lang/String;

    const/4 p3, 0x1

    .line 1779
    invoke-static {p2, p1, p0, p3}, Lcom/xiaomi/accountsdk/request/s;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p0

    if-eqz p0, :cond_36

    .line 1784
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1782
    :cond_36
    new-instance p0, Ljava/io/IOException;

    const-string p1, "failed to get response to refresh access token"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
