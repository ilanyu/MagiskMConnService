.class final Lcn/kuaipan/android/a/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/kuaipan/android/a/a;


# static fields
.field private static bH:Lcn/kuaipan/android/utils/TwoKeyHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/kuaipan/android/utils/TwoKeyHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 11
    new-instance v0, Lcn/kuaipan/android/utils/TwoKeyHashMap;

    invoke-direct {v0}, Lcn/kuaipan/android/utils/TwoKeyHashMap;-><init>()V

    sput-object v0, Lcn/kuaipan/android/a/k;->bH:Lcn/kuaipan/android/utils/TwoKeyHashMap;

    const-string v0, "badEmailFormat"

    const/16 v1, 0xca

    const v2, 0x35c29

    .line 12
    invoke-static {v1, v2, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "sameEmailRegisteredBefore"

    const v2, 0x35c2a

    .line 13
    invoke-static {v1, v2, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "login fail"

    const v2, 0x35c2b

    .line 15
    invoke-static {v1, v2, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "bad openid"

    const v2, 0x35c2c

    .line 16
    invoke-static {v1, v2, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "wrong verification code"

    const v2, 0x35c2d

    .line 17
    invoke-static {v1, v2, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "cannot create app folder"

    const v2, 0x35c2e

    .line 18
    invoke-static {v1, v2, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "pickupCodeNotSupport"

    const v2, 0x35c37

    .line 19
    invoke-static {v1, v2, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "pickupCodeTooLong"

    const v2, 0x35c38

    .line 20
    invoke-static {v1, v2, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "file exist"

    const v2, 0x35c2f

    .line 22
    invoke-static {v1, v2, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "file not exist"

    const v2, 0x35c30

    .line 23
    invoke-static {v1, v2, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "tooManyFiles"

    const v2, 0x35c31

    .line 24
    invoke-static {v1, v2, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "file too large"

    const v2, 0x35c32

    .line 25
    invoke-static {v1, v2, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "over space"

    const v2, 0x35c33

    .line 26
    invoke-static {v1, v2, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "fnameTooLong"

    const v2, 0x35c3b

    .line 27
    invoke-static {v1, v2, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "commit fail"

    const v2, 0x35c34

    .line 29
    invoke-static {v1, v2, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "forbidden"

    const v2, 0x35c35

    .line 30
    invoke-static {v1, v2, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "account server error"

    const v2, 0x35c36

    .line 31
    invoke-static {v1, v2, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "shared"

    const v2, 0x35c39

    .line 33
    invoke-static {v1, v2, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "cannotBind"

    const v2, 0x35c3a

    .line 34
    invoke-static {v1, v2, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "bad parameters"

    const v1, 0x3a981

    const/16 v2, 0x190

    .line 36
    invoke-static {v2, v1, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "bad request"

    const v3, 0x3a982

    .line 37
    invoke-static {v2, v3, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "no such api implemented"

    const v3, 0x3a983

    .line 38
    invoke-static {v2, v3, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "clientBadParams"

    .line 39
    invoke-static {v2, v1, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "serverError"

    const v1, 0x3a984

    .line 40
    invoke-static {v2, v1, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "accountServerError"

    const v1, 0x3a985

    .line 41
    invoke-static {v2, v1, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "unknownError"

    const v1, 0x3a986

    .line 42
    invoke-static {v2, v1, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "requestFail"

    const v1, 0x3a987

    .line 43
    invoke-static {v2, v1, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "mobileExists"

    const v1, 0x3a988

    .line 44
    invoke-static {v2, v1, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "sendMsgError"

    const v1, 0x3a989

    .line 45
    invoke-static {v2, v1, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "tooManyRequests"

    const v1, 0x3a98a

    .line 46
    invoke-static {v2, v1, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "tooOften"

    const v1, 0x3a98b

    .line 47
    invoke-static {v2, v1, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "invalidCode"

    const v1, 0x3a98c

    .line 48
    invoke-static {v2, v1, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "invalidMobile"

    const v1, 0x3a98d

    .line 49
    invoke-static {v2, v1, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "emptyPassword"

    const v1, 0x3a98e

    .line 50
    invoke-static {v2, v1, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "passwordTooLong"

    const v3, 0x3a98f

    .line 51
    invoke-static {v2, v3, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "noSuchUser"

    const v3, 0x3a990

    .line 52
    invoke-static {v2, v3, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "needPassword"

    .line 53
    invoke-static {v2, v1, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "canNotSetPassword"

    const v1, 0x3a991

    .line 54
    invoke-static {v2, v1, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "verifyNotRequest"

    const v1, 0x3a992

    .line 55
    invoke-static {v2, v1, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "expiredCode"

    const v1, 0x3a994

    .line 56
    invoke-static {v2, v1, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "file not exist"

    const v1, 0x3a993

    .line 57
    invoke-static {v2, v1, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "bad signature"

    const/16 v1, 0x191

    const v2, 0x3a9e5

    .line 59
    invoke-static {v1, v2, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "reused nonce"

    const v2, 0x3a9e6

    .line 60
    invoke-static {v1, v2, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "bad consumer key"

    const v2, 0x3a9e7

    .line 61
    invoke-static {v1, v2, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "request expired"

    const v2, 0x3a9e8

    .line 62
    invoke-static {v1, v2, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "not supported auth mode"

    const v2, 0x3a9e9

    .line 63
    invoke-static {v1, v2, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "authorization expired"

    const v2, 0x3a9ea

    .line 64
    invoke-static {v1, v2, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "api daily limit"

    const v2, 0x3a9eb

    .line 65
    invoke-static {v1, v2, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "no right to call this api"

    const v2, 0x3a9ec

    .line 66
    invoke-static {v1, v2, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "bad verifier"

    const v2, 0x3a9ed

    .line 67
    invoke-static {v1, v2, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "authorization failed"

    const v2, 0x3a9ee

    .line 68
    invoke-static {v1, v2, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "invalid token"

    const v2, 0x3a9ef

    .line 69
    invoke-static {v1, v2, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "file exist"

    const/16 v1, 0x193

    const v2, 0x3aaad

    .line 71
    invoke-static {v1, v2, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "forbidden"

    const v2, 0x3aaae

    .line 72
    invoke-static {v1, v2, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "file not exist"

    const/16 v1, 0x194

    const v2, 0x3ab11

    .line 74
    invoke-static {v1, v2, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "too many files"

    const/16 v1, 0x196

    const v2, 0x3abd9

    .line 75
    invoke-static {v1, v2, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "file too large"

    const/16 v1, 0x19d

    const v2, 0x3ae95

    .line 76
    invoke-static {v1, v2, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "server error"

    const/16 v1, 0x1f4

    const v2, 0x3d091

    .line 77
    invoke-static {v1, v2, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "over space"

    const/16 v1, 0x1fb

    const v2, 0x3d34d

    .line 78
    invoke-static {v1, v2, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "file exist"

    const/16 v1, 0xc8

    const v2, 0x35b61

    .line 81
    invoke-static {v1, v2, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "commit fail"

    const v2, 0x35b68

    .line 82
    invoke-static {v1, v2, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "ERR_BAD_PARAMS"

    const v2, 0x35b92

    .line 83
    invoke-static {v1, v2, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "ERR_SERVER_EXCEPTION"

    const v2, 0x35b93

    .line 84
    invoke-static {v1, v2, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "ERR_INVALID_CUSTOMERID"

    const v2, 0x35b94

    .line 85
    invoke-static {v1, v2, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "ERR_INVALID_STOID"

    const v2, 0x35b95

    .line 86
    invoke-static {v1, v2, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "ERR_STORAGE_REQUEST_ERROR"

    const v2, 0x35b96

    .line 87
    invoke-static {v1, v2, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "ERR_STORAGE_REQUEST_FAILED"

    const v2, 0x35b97

    .line 88
    invoke-static {v1, v2, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "ERR_CHUNK_OUT_OF_RANGE"

    const v2, 0x35b98

    .line 89
    invoke-static {v1, v2, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "ERR_INVALID_UPLOAD_ID"

    const v2, 0x35b99

    .line 90
    invoke-static {v1, v2, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "ERR_INVALID_CHUNK_POS"

    const v2, 0x35b9a

    .line 91
    invoke-static {v1, v2, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "ERR_INVALID_CHUNK_SIZE"

    const v2, 0x35b9b

    .line 92
    invoke-static {v1, v2, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "ERR_CHUNK_CORRUPTED"

    const v2, 0x35b9c

    .line 93
    invoke-static {v1, v2, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "ERR_BLOCK_CORRUPTED"

    const v2, 0x35b9d

    .line 94
    invoke-static {v1, v2, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "ERR_TOO_MANY_CURRENT_BLOCKS"

    const v2, 0x35b9e

    .line 95
    invoke-static {v1, v2, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "ERR_STORAGE_COMMIT_ERROR"

    const v2, 0x35b9f

    .line 96
    invoke-static {v1, v2, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "forbidden"

    const v2, 0x35b69

    .line 98
    invoke-static {v1, v2, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "over space"

    const v2, 0x35b6a

    .line 99
    invoke-static {v1, v2, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "targetNotExist"

    const v2, 0x35b6b

    .line 100
    invoke-static {v1, v2, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "get stub fail"

    const v2, 0x35b6c

    .line 101
    invoke-static {v1, v2, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "unsupportedCharRange"

    const v2, 0x35b6d

    .line 102
    invoke-static {v1, v2, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "dataOperationFailed"

    const v2, 0x35b6e

    .line 103
    invoke-static {v1, v2, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    const-string v0, "file too large"

    const v2, 0x35b6f

    .line 104
    invoke-static {v1, v2, v0}, Lcn/kuaipan/android/a/k;->a(IILjava/lang/String;)V

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILjava/lang/String;)I
    .registers 3

    .line 112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    goto :goto_10

    .line 115
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 117
    :goto_10
    sget-object v0, Lcn/kuaipan/android/a/k;->bH:Lcn/kuaipan/android/utils/TwoKeyHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcn/kuaipan/android/utils/TwoKeyHashMap;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_22

    const p0, 0x30d40

    goto :goto_26

    .line 119
    :cond_22
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_26
    return p0
.end method

.method private static a(IILjava/lang/String;)V
    .registers 4

    .line 108
    sget-object v0, Lcn/kuaipan/android/a/k;->bH:Lcn/kuaipan/android/utils/TwoKeyHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    if-nez p2, :cond_a

    const/4 p2, 0x0

    goto :goto_e

    :cond_a
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    :goto_e
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p2, p1}, Lcn/kuaipan/android/utils/TwoKeyHashMap;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
